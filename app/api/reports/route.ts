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

    // Get outlet's business day start hour
    const { data: outletData } = await supabase
      .from('outlets')
      .select('business_day_start_hour')
      .eq('id', outlet_id)
      .single();

    const businessDayStartHour = outletData?.business_day_start_hour || 4;

    // Calculate business day boundaries
    // Business day: From 04:00 today to 03:59:59 tomorrow
    const startDateTime = new Date(`${start_date}T00:00:00Z`);
    const endDateTime = new Date(`${end_date}T23:59:59Z`);

    // Adjust for business day (if before reset hour, start from previous day 04:00)
    if (startDateTime.getUTCHours() < businessDayStartHour) {
      startDateTime.setUTCDate(startDateTime.getUTCDate() - 1);
    }
    startDateTime.setUTCHours(businessDayStartHour, 0, 0, 0);

    // End date: add 1 day and set to reset hour - 1 second
    endDateTime.setUTCDate(endDateTime.getUTCDate() + 1);
    endDateTime.setUTCHours(businessDayStartHour - 1, 59, 59, 999);

    console.log(`📅 Business day range: ${startDateTime.toISOString()} to ${endDateTime.toISOString()}`);

    const { data: sales, error } = await supabase
      .from('sales')
      .select('*, sale_items(*), users(name)')
      .eq('outlet_id', outlet_id)
      .gte('created_at', startDateTime.toISOString())
      .lte('created_at', endDateTime.toISOString());

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
      // compute profit explicitly as sales - (hpp + bonus + meal)
      const total = Number(sale.total_amount || 0);
      const hpp = Number(sale.hpp_total || 0);
      const bonus = Number(sale.bonus_amount || 0);
      const meal = Number(sale.meal_amount || 0);
      const computedProfit = total - (hpp + bonus + meal);
      report.profit += computedProfit;
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
