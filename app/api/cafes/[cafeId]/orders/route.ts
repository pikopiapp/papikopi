import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// GET /api/cafes/[cafeId]/orders?status=pending — daftar order per cafe
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ cafeId: string }> }
) {
  try {
    const { cafeId } = await params;
    const status = request.nextUrl.searchParams.get('status');

    let query = supabase
      .from('orders')
      .select(
        '*, order_items(*), outlets(id, name), users(id, name)'
      )
      .eq('cafe_id', cafeId)
      .order('created_at', { ascending: false });

    if (status) {
      query = query.eq('status', status);
    }

    const { data, error } = await query;

    if (error) throw error;

    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Get orders error:', error);
    return NextResponse.json({ error: 'Failed to fetch orders' }, { status: 500 });
  }
}

// POST /api/cafes/[cafeId]/orders — buat order baru (dari tenant app)
// Body: { outlet_id, items: [{product_id, quantity, price, hpp}], customer_name?, table_number? }
export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ cafeId: string }> }
) {
  try {
    const { cafeId } = await params;
    const body = await request.json();
    const { outlet_id, items, customer_name, table_number, total_amount } = body as {
      outlet_id: string;
      items: Array<{ product_id: string; quantity: number; price: number; hpp?: number }>;
      customer_name?: string;
      table_number?: string | number;
      total_amount?: number;
    };

    if (!outlet_id || !items || !Array.isArray(items) || items.length === 0) {
      return NextResponse.json(
        { error: 'outlet_id and items required' },
        { status: 400 }
      );
    }

    // Validasi: outlet harus bagian dari cafe ini
    const { data: outlet, error: outletError } = await supabase
      .from('outlets')
      .select('id, cafe_id')
      .eq('id', outlet_id)
      .single();

    if (outletError) throw outletError;

    if (outlet.cafe_id !== cafeId) {
      return NextResponse.json(
        { error: 'Outlet is not part of this cafe' },
        { status: 400 }
      );
    }

    // Hitung total dari items
    let calculatedTotal = 0;
    for (const item of items) {
      calculatedTotal += item.price * item.quantity;
    }

    // Generate nomor antrian via RPC
    const { data: queueNumber, error: queueError } = await supabase.rpc(
      'generate_queue_number',
      { p_cafe_id: cafeId }
    );

    if (queueError) throw queueError;

    // Generate order number
    const orderNumber = `ORD-${Date.now()}`;

    // Buat order
    const { data: order, error: orderError } = await supabase
      .from('orders')
      .insert({
        order_number: orderNumber,
        queue_number: queueNumber,
        cafe_id: cafeId,
        outlet_id: outlet_id,
        customer_name: customer_name || null,
        table_number: table_number ? String(table_number) : null,
        total_amount: total_amount || calculatedTotal,
        status: 'pending',
      })
      .select()
      .single();

    if (orderError) throw orderError;

    // Buat order_items
    const orderItems = items.map((item) => ({
      order_id: order.id,
      product_id: item.product_id,
      quantity: item.quantity,
      price: item.price,
      hpp: item.hpp || 0,
    }));

    const { error: itemsError } = await supabase
      .from('order_items')
      .insert(orderItems);

    if (itemsError) {
      // Rollback order jika items gagal
      await supabase.from('orders').delete().eq('id', order.id);
      throw itemsError;
    }

    return NextResponse.json({ ...order, order_items: orderItems }, { status: 201 });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Create order error:', errorMsg);
    return NextResponse.json({ error: `Failed to create order: ${errorMsg}` }, { status: 500 });
  }
}