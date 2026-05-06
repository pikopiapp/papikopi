import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const outlet_id = searchParams.get('outlet_id');
    const start_date = searchParams.get('start_date');
    const end_date = searchParams.get('end_date') || new Date().toISOString().split('T')[0];

    if (!outlet_id) {
      return NextResponse.json({ error: 'outlet_id required' }, { status: 400 });
    }

    const actualStartDate = start_date || new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];

    // Get sales data
    const { data: sales } = await supabase
      .from('sales')
      .select('*, sale_items(*), users(name)')
      .eq('outlet_id', outlet_id)
      .gte('created_at', `${actualStartDate}T00:00:00`)
      .lte('created_at', `${end_date}T23:59:59`);

    if (!sales) {
      return NextResponse.json({ error: 'Failed to fetch sales' }, { status: 500 });
    }

    // Calculate metrics
    const totalRevenue = sales.reduce((sum, s) => sum + Number(s.total_amount), 0);
    const totalProfit = sales.reduce((sum, s) => sum + Number(s.profit), 0);
    const totalBonus = sales.reduce((sum, s) => sum + Number(s.bonus_amount), 0);
    const avgTransaction = sales.length > 0 ? totalRevenue / sales.length : 0;

    // Top products
    interface Product {
      id: string;
      quantity: number;
      revenue: number;
    }
    const productMap = new Map<string, Product>();
    sales.forEach(sale => {
      sale.sale_items?.forEach((item: { product_id: string; quantity: number; price: string }) => {
        if (!productMap.has(item.product_id)) {
          productMap.set(item.product_id, { id: item.product_id, quantity: 0, revenue: 0 });
        }
        const prod = productMap.get(item.product_id)!;
        prod.quantity += item.quantity;
        prod.revenue += Number(item.price) * item.quantity;
      });
    });

    const topProducts = Array.from(productMap.values())
      .sort((a, b) => b.revenue - a.revenue)
      .slice(0, 5);

    // Barista performance
    interface Barista {
      id: string;
      name: string;
      transactions: number;
      revenue: number;
      profit: number;
    }
    const baristaMap = new Map<string, Barista>();
    sales.forEach(sale => {
      if (!baristaMap.has(sale.barista_id)) {
        baristaMap.set(sale.barista_id, { 
          id: sale.barista_id, 
          name: sale.users?.name || 'Unknown',
          transactions: 0, 
          revenue: 0,
          profit: 0
        });
      }
      const barista = baristaMap.get(sale.barista_id)!;
      barista.transactions += 1;
      barista.revenue += Number(sale.total_amount);
      barista.profit += Number(sale.profit);
    });

    const baristaPerformance = Array.from(baristaMap.values())
      .sort((a, b) => b.revenue - a.revenue);

    // Daily sales trend
    interface DailyMetric {
      date: string;
      revenue: number;
      transactions: number;
      profit: number;
    }
    const dailySales = new Map<string, DailyMetric>();
    sales.forEach(sale => {
      const date = sale.created_at.split('T')[0];
      if (!dailySales.has(date)) {
        dailySales.set(date, { date, revenue: 0, transactions: 0, profit: 0 });
      }
      const day = dailySales.get(date)!;
      day.revenue += Number(sale.total_amount);
      day.transactions += 1;
      day.profit += Number(sale.profit);
    });

    const dailyTrend = Array.from(dailySales.values())
      .sort((a, b) => new Date(a.date).getTime() - new Date(b.date).getTime());

    // Payment method breakdown
    const cashSales = sales.filter(s => s.payment_method === 'cash');
    const qrisSales = sales.filter(s => s.payment_method === 'qris');

    const cashRevenue = cashSales.reduce((sum, s) => sum + Number(s.total_amount), 0);
    const qrisRevenue = qrisSales.reduce((sum, s) => sum + Number(s.total_amount), 0);

    return NextResponse.json({
      metrics: {
        totalRevenue,
        totalProfit,
        totalBonus,
        avgTransaction,
        totalTransactions: sales.length,
        totalCash: cashRevenue,
        totalQris: qrisRevenue
      },
      topProducts,
      baristaPerformance,
      dailyTrend,
      paymentBreakdown: [
        { method: 'Cash', value: cashRevenue, percentage: totalRevenue > 0 ? (cashRevenue / totalRevenue * 100).toFixed(1) : 0 },
        { method: 'QRIS', value: qrisRevenue, percentage: totalRevenue > 0 ? (qrisRevenue / totalRevenue * 100).toFixed(1) : 0 }
      ]
    });
  } catch (error) {
    console.error('Analytics error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
