import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const SUPA_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
const SUPA_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPA_URL || !SUPA_SERVICE_KEY) {
  throw new Error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY env');
}

const svc = createClient(SUPA_URL, SUPA_SERVICE_KEY, { auth: { persistSession: false } });

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { sale_id, payment_method, add_items = [], update_items = [], delete_item_ids = [] } = body;

    if (!sale_id) return NextResponse.json({ error: 'sale_id required' }, { status: 400 });

    // Normalize arrays
    const addItems: any[] = Array.isArray(add_items) ? add_items : [];
    const updateItems: any[] = Array.isArray(update_items) ? update_items : [];
    const deleteIds: any[] = Array.isArray(delete_item_ids) ? delete_item_ids : [];

    // Helper: fetch products for product_ids used in add/update
    const productIds = Array.from(new Set([
      ...addItems.map((i) => i.product_id).filter(Boolean),
      ...updateItems.map((i) => i.product_id).filter(Boolean),
    ]));

    let productsMap: Record<string, any> = {};
    if (productIds.length > 0) {
      const { data: prods } = await svc.from('products').select('id,price,hpp,name').in('id', productIds);
      if (Array.isArray(prods)) prods.forEach((p: any) => { productsMap[p.id] = p; });
    }

    // Process updates in a transaction-like sequential flow

    // 1) Insert new sale_items
    if (addItems.length > 0) {
      const toInsert = addItems.map((it) => {
        const prod = productsMap[it.product_id] || {};
        return {
          sale_id,
          product_id: it.product_id,
          quantity: Number(it.quantity) || 0,
          price: prod.price ?? it.price ?? 0,
          hpp: prod.hpp ?? 0,
        };
      });
      await svc.from('sale_items').insert(toInsert);
    }

    // 2) Update existing sale_items
    for (const it of updateItems) {
      const itemId = it.id;
      if (!itemId) continue;
      const updateData: any = {};
      if (it.product_id) {
        const prod = productsMap[it.product_id] || {};
        updateData.product_id = it.product_id;
        updateData.price = prod.price ?? it.price ?? undefined;
        updateData.hpp = prod.hpp ?? undefined;
      }
      if (it.quantity !== undefined) updateData.quantity = Number(it.quantity);
      if (it.price !== undefined && updateData.price === undefined) updateData.price = Number(it.price);

      if (Object.keys(updateData).length > 0) {
        await svc.from('sale_items').update(updateData).eq('id', itemId);
      }
    }

    // 3) Delete sale_items
    if (deleteIds.length > 0) {
      await svc.from('sale_items').delete().in('id', deleteIds);
    }

    // 4) Recalculate totals for the sale and update sale row
    const { data: itemsAfter } = await svc.from('sale_items').select('quantity,price,hpp').eq('sale_id', sale_id);
    const total_amount = (itemsAfter || []).reduce((s: number, it: any) => s + (Number(it.price) || 0) * (Number(it.quantity) || 0), 0);
    const hpp_total = (itemsAfter || []).reduce((s: number, it: any) => s + (Number(it.hpp) || 0) * (Number(it.quantity) || 0), 0);
    const profit = total_amount - hpp_total;

    const saleUpdate: any = { total_amount, hpp_total, profit };
    if (payment_method) saleUpdate.payment_method = payment_method;

    await svc.from('sales').update(saleUpdate).eq('id', sale_id);

    // Return updated sale with items
    const { data: saleRows } = await svc.from('sales').select('*').eq('id', sale_id).single();
    const { data: saleItems } = await svc.from('sale_items').select('*').eq('sale_id', sale_id);

    return NextResponse.json({ sale: saleRows, sale_items: saleItems || [] });
  } catch (err: any) {
    console.error('sales/edit error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
