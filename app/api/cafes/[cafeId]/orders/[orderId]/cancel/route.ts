import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/cafes/[cafeId]/orders/[orderId]/cancel — batalkan order
export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ cafeId: string; orderId: string }> }
) {
  try {
    const { cafeId, orderId } = await params;

    // Validasi: order harus milik cafe ini dan masih pending
    const { data: order, error: orderError } = await supabase
      .from('orders')
      .select('id, cafe_id, status')
      .eq('id', orderId)
      .eq('cafe_id', cafeId)
      .single();

    if (orderError) throw orderError;

    if (!order) {
      return NextResponse.json(
        { error: 'Order not found in this cafe' },
        { status: 404 }
      );
    }

    if (order.status !== 'pending') {
      return NextResponse.json(
        { error: 'Only pending orders can be cancelled' },
        { status: 400 }
      );
    }

    // Batalkan order
    const { data, error } = await supabase
      .from('orders')
      .update({ status: 'cancelled' })
      .eq('id', orderId)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ success: true, order: data });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Cancel order error:', errorMsg);
    return NextResponse.json({ error: `Failed to cancel order: ${errorMsg}` }, { status: 500 });
  }
}