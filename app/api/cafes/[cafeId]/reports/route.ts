import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// GET /api/cafes/[cafeId]/reports?type=daily|monthly|tenant&start_date=&end_date=
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ cafeId: string }> }
) {
  try {
    const { cafeId } = await params;
    const type = request.nextUrl.searchParams.get('type') || 'daily';
    const startDate = request.nextUrl.searchParams.get('start_date');
    const endDate = request.nextUrl.searchParams.get('end_date');

    // Ambil semua order paid di cafe ini
    let query = supabase
      .from('orders')
      .select(
        'id, order_number, queue_number, outlet_id, customer_name, table_number, total_amount, payment_method, created_at, paid_at, outlets(id, name)'
      )
      .eq('cafe_id', cafeId)
      .eq('status', 'paid');

    if (startDate) {
      query = query.gte('paid_at', startDate);
    }
    if (endDate) {
      query = query.lte('paid_at', endDate);
    }

    const { data: orders, error } = await query.order('paid_at', { ascending: false });

    if (error) throw error;

    const paidOrders = orders || [];

    // Hitung total revenue
    const totalRevenue = paidOrders.reduce((sum, o) => sum + Number(o.total_amount), 0);

    // Siapkan hasil berdasarkan type
    let result;

    if (type === 'tenant') {
      // Breakdown per tenant
      const tenantMap = new Map<string, { tenant_id: string; tenant_name: string; order_count: number; revenue: number }>();

      for (const o of paidOrders) {
        const tenantId = o.outlet_id;
        const outletsArr = o.outlets as Array<{ name?: string }> | null;
        const tenantName = outletsArr?.[0]?.name || 'Unknown';

        if (!tenantMap.has(tenantId)) {
          tenantMap.set(tenantId, {
            tenant_id: tenantId,
            tenant_name: tenantName,
            order_count: 0,
            revenue: 0,
          });
        }

        const entry = tenantMap.get(tenantId)!;
        entry.order_count += 1;
        entry.revenue += Number(o.total_amount);
      }

      result = {
        type,
        total_revenue: totalRevenue,
        total_orders: paidOrders.length,
        tenants: Array.from(tenantMap.values()),
      };
    } else if (type === 'monthly') {
      // Aggregate per bulan
      const monthMap = new Map<string, { month: string; order_count: number; revenue: number }>();

      for (const o of paidOrders) {
        const paidAt = new Date(o.paid_at);
        const monthKey = `${paidAt.getFullYear()}-${String(paidAt.getMonth() + 1).padStart(2, '0')}`;

        if (!monthMap.has(monthKey)) {
          monthMap.set(monthKey, { month: monthKey, order_count: 0, revenue: 0 });
        }

        const entry = monthMap.get(monthKey)!;
        entry.order_count += 1;
        entry.revenue += Number(o.total_amount);
      }

      result = {
        type,
        total_revenue: totalRevenue,
        total_orders: paidOrders.length,
        months: Array.from(monthMap.values()).sort((a, b) => a.month.localeCompare(b.month)),
      };
    } else {
      // daily (default)
      const dayMap = new Map<string, { date: string; order_count: number; revenue: number }>();

      for (const o of paidOrders) {
        const paidAt = new Date(o.paid_at);
        const dateKey = paidAt.toISOString().split('T')[0];

        if (!dayMap.has(dateKey)) {
          dayMap.set(dateKey, { date: dateKey, order_count: 0, revenue: 0 });
        }

        const entry = dayMap.get(dateKey)!;
        entry.order_count += 1;
        entry.revenue += Number(o.total_amount);
      }

      result = {
        type,
        total_revenue: totalRevenue,
        total_orders: paidOrders.length,
        days: Array.from(dayMap.values()).sort((a, b) => a.date.localeCompare(b.date)),
      };
    }

    return NextResponse.json(result);
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Get cafe reports error:', errorMsg);
    return NextResponse.json({ error: `Failed to get reports: ${errorMsg}` }, { status: 500 });
  }
}