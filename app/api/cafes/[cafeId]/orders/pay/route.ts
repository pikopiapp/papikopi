import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/cafes/[cafeId]/orders/pay — proses pembayaran terpusat
// Body: { order_ids: string[], payment_method: 'CASH'|'QRIS', cashier_id: string }
export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ cafeId: string }> }
) {
  try {
    const { cafeId } = await params;
    const body = await request.json();
    const { order_ids, payment_method, cashier_id } = body as {
      order_ids: string[];
      payment_method: string;
      cashier_id: string;
    };

    if (!order_ids || !Array.isArray(order_ids) || order_ids.length === 0) {
      return NextResponse.json(
        { error: 'order_ids required' },
        { status: 400 }
      );
    }

    if (!payment_method || !['CASH', 'QRIS'].includes(payment_method.toUpperCase())) {
      return NextResponse.json(
        { error: 'payment_method must be CASH or QRIS' },
        { status: 400 }
      );
    }

    if (!cashier_id) {
      return NextResponse.json(
        { error: 'cashier_id required' },
        { status: 400 }
      );
    }

    // Validasi: semua order harus milik cafe ini
    const { data: orders, error: ordersError } = await supabase
      .from('orders')
      .select('id, cafe_id, status')
      .in('id', order_ids);

    if (ordersError) throw ordersError;

    if (!orders || orders.length !== order_ids.length) {
      return NextResponse.json(
        { error: 'Some orders not found' },
        { status: 400 }
      );
    }

    // Pastikan semua order milik cafe ini
    const allInCafe = orders.every((o) => o.cafe_id === cafeId);
    if (!allInCafe) {
      return NextResponse.json(
        { error: 'Some orders are not part of this cafe' },
        { status: 400 }
      );
    }

    // Pastikan semua order masih pending
    const allPending = orders.every((o) => o.status === 'pending');
    if (!allPending) {
      return NextResponse.json(
        { error: 'Some orders are already processed' },
        { status: 400 }
      );
    }

    // Proses pembayaran via RPC (atomic)
    const { data, error } = await supabase.rpc('process_cafe_payment', {
      p_order_ids: order_ids,
      p_payment_method: payment_method.toUpperCase(),
      p_cashier_id: cashier_id,
    });

    if (error) throw error;

    return NextResponse.json({
      success: true,
      processed_orders: data || [],
    });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Process payment error:', errorMsg);
    return NextResponse.json({ error: `Failed to process payment: ${errorMsg}` }, { status: 500 });
  }
}