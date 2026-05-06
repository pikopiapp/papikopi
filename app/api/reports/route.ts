import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');
    const start_date = request.nextUrl.searchParams.get('start_date');
    const end_date = request.nextUrl.searchParams.get('end_date');
    const type = request.nextUrl.searchParams.get('type') || 'daily';

    if (!outlet_id || !start_date || !end_date) {
      return NextResponse.json({ error: 'Missing required parameters' }, { status: 400 });
    }

    const { data: sales, error } = await supabase
      .from('sales')
      .select('*, sale_items(*), users(name)')
      .eq('outlet_id', outlet_id)
      .gte('created_at', `${start_date}T00:00:00`)
      .lte('created_at', `${end_date}T23:59:59`);

    if (error) throw error;

    // Group by date based on report type
    interface DailyReport {
      [key: string]: {
        date: string;
        revenue: number;
        profit: number;
        bonus: number;
        transactions: number;
        hpp: number;
      };
    }
    const dailyReports: DailyReport = {};

    sales?.forEach((sale) => {
      const date = sale.created_at.split('T')[0];
      if (!dailyReports[date]) {
        dailyReports[date] = {
          date,
          revenue: 0,
          profit: 0,
          bonus: 0,
          transactions: 0,
          hpp: 0
        };
      }

      const report = dailyReports[date];
      report.revenue += Number(sale.total_amount);
      report.profit += Number(sale.profit);
      report.bonus += Number(sale.bonus_amount);
      report.hpp += Number(sale.hpp_total);
      report.transactions += 1;
    });

    const reportData = Object.values(dailyReports).sort(
      (a, b) => new Date(a.date).getTime() - new Date(b.date).getTime()
    );

    return NextResponse.json({
      type,
      start_date,
      end_date,
      reports: reportData,
      summary: {
        totalRevenue: reportData.reduce((sum, r) => sum + r.revenue, 0),
        totalProfit: reportData.reduce((sum, r) => sum + r.profit, 0),
        totalBonus: reportData.reduce((sum, r) => sum + r.bonus, 0),
        totalHpp: reportData.reduce((sum, r) => sum + r.hpp, 0),
        totalTransactions: reportData.reduce((sum, r) => sum + r.transactions, 0)
      }
    });
  } catch (error) {
    console.error('Reports error:', error);
    return NextResponse.json({ error: 'Failed to fetch reports' }, { status: 500 });
  }
}
