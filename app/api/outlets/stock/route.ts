import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  try {
    // Fetch showcase allocations with related data including barista info
    const { data: allocations, error: allocError } = await supabase
      .from('showcase_allocations')
      .select(`
        id,
        showcase_product_id,
        outlet_id,
        quantity,
        allocated_date,
        showcase_products (
          id,
          product_id,
          product_name
        ),
        outlets (
          id,
          name
        )
      `)
      .order('outlet_id');

    if (allocError) {
      console.error('Allocation fetch error:', allocError);
      return Response.json(
        { error: allocError.message },
        { status: 400 }
      );
    }

    if (!allocations || allocations.length === 0) {
      return Response.json([]);
    }

    // Fetch barista assignments (baristas assigned to outlets)
    const { data: baristas, error: baristasError } = await supabase
      .from('users')
      .select('id, name, outlet_id')
      .eq('role', 'barista');

    if (baristasError) {
      console.error('Barista fetch error:', baristasError);
      // Continue anyway - barista info is optional
    }

    // Create a map of outlet_id -> barista_name
    const baristasMap = (baristas || []).reduce((acc: any, user: any) => {
      if (user.outlet_id) {
        acc[user.outlet_id] = user.name;
      }
      return acc;
    }, {});

    // Transform data with barista names
    const enrichedStock = allocations.map((item: any) => ({
      outlet_id: item.outlet_id,
      outlet_name: item.outlets?.name || 'Unknown Outlet',
      barista_name: baristasMap[item.outlet_id] || null,
      outlet_display: baristasMap[item.outlet_id] 
        ? `${item.outlets?.name || 'Unknown Outlet'} (${baristasMap[item.outlet_id]})`
        : item.outlets?.name || 'Unknown Outlet',
      product_id: item.showcase_products?.product_id || item.showcase_product_id,
      product_name: item.showcase_products?.product_name || 'Unknown Product',
      quantity: item.quantity || 0,
      last_updated: item.allocated_date 
        ? new Date(item.allocated_date).toISOString().split('T')[0]
        : new Date().toISOString().split('T')[0],
    }));

    return Response.json(enrichedStock);
  } catch (error) {
    console.error('Error fetching outlet stock:', error);
    return Response.json(
      { error: 'Failed to fetch outlet stock' },
      { status: 500 }
    );
  }
}
