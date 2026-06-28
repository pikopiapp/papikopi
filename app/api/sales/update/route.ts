import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const SUPA_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
const SUPA_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPA_URL || !SUPA_SERVICE_KEY) {
  throw new Error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY env');
}

const svc = createClient(SUPA_URL, SUPA_SERVICE_KEY, { auth: { persistSession: false } });

export async function PATCH(request: Request) {
  try {
    const body = await request.json();
    const { sale_id, payment_method, items } = body as {
      sale_id: string;
      payment_method?: string;
      items?: Array<{ id?: string; product_id: string; quantity: number }>;
    };

    if (!sale_id) return NextResponse.json({ error: 'sale_id required' }, { status: 400 });

    // Update sale_items first
    if (Array.isArray(items) && items.length > 0) {
      // Fetch product prices/hpp in batch
      const productIds = Array.from(new Set(items.map(i => i.product_id)));
      const { data: productsData } = await svc.from('products').select('id,price,hpp').in('id', productIds);
      const prodMap: Record<string, any> = {};
      (productsData || []).forEach((p: any) => { prodMap[p.id] = p; });

      for (const it of items) {
        const prod = prodMap[it.product_id] || { price: null, hpp: null };
        const updateData: Record<string, any> = {
          product_id: it.product_id,
          quantity: Number(it.quantity) || 0,
        };
        if (prod.price !== undefined && prod.price !== null) updateData.price = prod.price;
        if (prod.hpp !== undefined && prod.hpp !== null) updateData.hpp = prod.hpp;

        if (it.id) {
          // update existing sale_item
          await svc.from('sale_items').update(updateData).eq('id', it.id);
        } else {
          // create new sale_item under this sale
          await svc.from('sale_items').insert([{ ...updateData, sale_id }]);
        }
      }
    }

    // Recalculate sale totals from sale_items
    const { data: updatedItems } = await svc.from('sale_items').select('quantity,price,hpp').eq('sale_id', sale_id);
    let total_amount = 0;
    let hpp_total = 0;
    (updatedItems || []).forEach((si: any) => {
      const q = Number(si.quantity) || 0;
      const p = Number(si.price) || 0;
      const h = Number(si.hpp) || 0;
      total_amount += q * p;
      hpp_total += q * h;
    });

    const profit = total_amount - hpp_total;

    const saleUpdate: Record<string, any> = { total_amount, hpp_total, profit };
    if (payment_method !== undefined) saleUpdate.payment_method = payment_method;

    const { data: saleData, error: saleError } = await svc.from('sales').update(saleUpdate).eq('id', sale_id).select().single();
    if (saleError) return NextResponse.json({ error: saleError.message }, { status: 500 });

    return NextResponse.json({ sale: saleData });
  } catch (err: any) {
    console.error('sales.update error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
