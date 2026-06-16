import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

export async function GET(request: Request) {
  try {
    // Fetch all sales
    const { data: sales, error: salesError } = await supabase
      .from('sales')
      .select('*')
      .order('created_at', { ascending: false });

    if (salesError) {
      console.error('Supabase sales error:', salesError);
      return NextResponse.json([], { status: 200 });
    }

    if (!sales || sales.length === 0) {
      return NextResponse.json([]);
    }

    // Get unique outlet IDs
    const outletIds = [...new Set(sales.map(s => s.outlet_id))];

    // Fetch outlets with their assigned barista (via user.outlet_id)
    const [outletsRes, usersRes, itemsRes] = await Promise.all([
      supabase
        .from('outlets')
        .select('id, name')
        .in('id', outletIds),
      supabase
        .from('users')
        .select('id, name, outlet_id')
        .eq('role', 'barista')
        .in('outlet_id', outletIds),
      supabase
        .from('sale_items')
        .select('*')
        .in('sale_id', sales.map(s => s.id)),
    ]);

    // Create lookup maps
    const outletMap = new Map((outletsRes.data || []).map(o => [o.id, o.name]));
    const outletBaristaMap = new Map((usersRes.data || []).map(u => [u.outlet_id, u.name]));

    console.log('by-outlet: sales count', sales.length);
    const saleIds = sales.map(s => s.id);
    console.log('by-outlet: sample saleIds', saleIds.slice(0, 5));
    console.log('by-outlet: itemsRes error', itemsRes?.error);
    console.log('by-outlet: itemsRes data length', (itemsRes?.data || []).length);
    try {
      console.log('by-outlet: itemsRes sample', JSON.stringify((itemsRes?.data || []).slice(0, 3)));
    } catch (e) {
      console.log('by-outlet: itemsRes sample stringify failed', e);
    }

    // If sale_items query failed or returned empty, attempt batching .in() to avoid Bad Request
    let saleItemsData = (itemsRes?.data || []);
    const chunkSize = 200;
    const chunkArray = (arr: any[], size: number) => {
      const res = [];
      for (let i = 0; i < arr.length; i += size) res.push(arr.slice(i, i + size));
      return res;
    };
    let fallbackSaleIds: string[] = [];
    let nestedSalesData: any = null;
    if ((saleItemsData.length === 0) && sales.length > 0) {
      try {
        // Try batching .in() into smaller requests
        fallbackSaleIds = saleIds;
        console.log('by-outlet: attempting batched .in() with', fallbackSaleIds.length, 'ids');
        const chunks = chunkArray(fallbackSaleIds, chunkSize);
        const chunkResults = await Promise.all(chunks.map(async (chunk) => {
          const res = await supabase.from('sale_items').select('*').in('sale_id', chunk);
          if (res.error) console.log('by-outlet: chunk error', res.error.message);
          return res.data || [];
        }));

        saleItemsData = chunkResults.flat();
        console.log('by-outlet: saleItemsData length after batching', saleItemsData.length);
        try {
          console.log('by-outlet: saleItemsData sample', JSON.stringify(saleItemsData.slice(0, 5)));
        } catch (e) {
          console.log('by-outlet: saleItemsData sample stringify failed', e);
        }

        // If still empty, try nested select fallback
        if (saleItemsData.length === 0) {
          try {
            console.log('by-outlet: batched .in() returned empty, trying nested select fallback');
            const { data: nestedSales, error: nestedError } = await supabase
              .from('sales')
              .select('id, sale_items(*)')
              .in('id', saleIds);

            if (!nestedError && nestedSales) {
              nestedSalesData = nestedSales;
              console.log('by-outlet: nestedSales length', nestedSales.length);
              saleItemsData = nestedSales.flatMap((r: any) => r.sale_items || []);
              console.log('by-outlet: saleItemsData length after nested fallback', saleItemsData.length);
            } else if (nestedError) {
              console.error('Fallback nested sale_items query error:', nestedError);
            }
          } catch (e) {
            console.error('Fallback sale_items fetch failed:', e);
          }
        }
      } catch (e) {
        console.error('Batched sale_items fetch failed:', e);
      }
    }

    // Fetch products for sale items
    const productIds = [...new Set((saleItemsData || []).map(i => i.product_id))];
    const { data: products } = await supabase
      .from('products')
      .select('id, name')
      .in('id', productIds);

    const productMap = new Map((products || []).map(p => [p.id, p.name]));

    // Group items by sale_id
    const itemsBySaleId = new Map();
    (saleItemsData || []).forEach(item => {
      if (!itemsBySaleId.has(item.sale_id)) {
        itemsBySaleId.set(item.sale_id, []);
      }
      itemsBySaleId.get(item.sale_id).push(item);
    });

    const enrichedSales = sales.map(sale => {
      const saleItems = (itemsBySaleId.get(sale.id) || []).map((item: any) => ({
        ...item,
        product_name: productMap.get(item.product_id) || 'Unknown',
      }));

      return {
        ...sale,
        outlet_name: outletMap.get(sale.outlet_id) || 'Unknown Outlet',
        barista_name: outletBaristaMap.get(sale.outlet_id) || 'Unknown Barista',
        items: saleItems,
      };
    });

    const url = new URL(request.url);
    const wantDebug = url.searchParams.get('debug') === '1';

    if (wantDebug) {
      const debug = {
        salesCount: sales.length,
        sampleSaleIds: saleIds.slice(0, 10),
        itemsResError: itemsRes?.error || null,
        itemsResLen: (itemsRes?.data || []).length,
        fallbackSaleIdsLen: fallbackSaleIds.length,
        nestedSalesLen: nestedSalesData ? nestedSalesData.length : null,
        saleItemsDataLen: saleItemsData.length,
        productIdsLen: productIds.length,
      };

      return NextResponse.json({ sales: enrichedSales, debug });
    }

    // Default: return enriched sales array to preserve previous client behavior
    return NextResponse.json(enrichedSales);
  } catch (error) {
    console.error('API Error:', error);
    return NextResponse.json([], { status: 200 });
  }
}
