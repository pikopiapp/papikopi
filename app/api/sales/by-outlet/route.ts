import { NextResponse } from 'next/server';
import { supabase } from '@/lib/showcase-utils';

export async function GET() {
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

    // Fetch products for sale items
    const productIds = [...new Set((itemsRes.data || []).map(i => i.product_id))];
    const { data: products } = await supabase
      .from('products')
      .select('id, name')
      .in('id', productIds);

    const productMap = new Map((products || []).map(p => [p.id, p.name]));

    // Group items by sale_id
    const itemsBySaleId = new Map();
    (itemsRes.data || []).forEach(item => {
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

    return NextResponse.json(enrichedSales);
  } catch (error) {
    console.error('API Error:', error);
    return NextResponse.json([], { status: 200 });
  }
}
