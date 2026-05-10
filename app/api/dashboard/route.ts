import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const outlet_id = searchParams.get("outlet_id");
    const date = searchParams.get("date") || new Date().toISOString().split("T")[0];

    if (!outlet_id) {
      return NextResponse.json(
        { error: "Outlet ID is required" },
        { status: 400 }
      );
    }

    // Get outlet's business day start hour
    const { data: outletData } = await supabase
      .from('outlets')
      .select('business_day_start_hour')
      .eq('id', outlet_id)
      .single();

    const businessDayStartHour = outletData?.business_day_start_hour || 4;

    // Calculate business day boundaries (04:00 to 03:59:59)
    const startDateTime = new Date(`${date}T00:00:00Z`);
    const endDateTime = new Date(`${date}T23:59:59Z`);

    // Adjust for business day (if before reset hour, start from previous day 04:00)
    if (startDateTime.getUTCHours() < businessDayStartHour) {
      startDateTime.setUTCDate(startDateTime.getUTCDate() - 1);
    }
    startDateTime.setUTCHours(businessDayStartHour, 0, 0, 0);

    // End date: next day at reset hour - 1 second
    endDateTime.setUTCDate(endDateTime.getUTCDate() + 1);
    endDateTime.setUTCHours(businessDayStartHour - 1, 59, 59, 999);

    console.log(`📅 Dashboard business day: ${startDateTime.toISOString()} to ${endDateTime.toISOString()}`);

    const startOfDay = startDateTime.toISOString();
    const endOfDay = endDateTime.toISOString();

    const { data: todaysSales } = await supabase
      .from("sales")
      .select("*")
      .eq("outlet_id", outlet_id)
      .gte("created_at", startOfDay)
      .lte("created_at", endOfDay);

    // Calculate totals
    let totalRevenue = 0;
    let totalHPP = 0;
    let totalBonus = 0;
    let totalProfit = 0;
    let cashSales = 0;
    let qrisSales = 0;
    let totalTransactions = 0;

    if (todaysSales) {
      totalTransactions = todaysSales.length;
      for (const sale of todaysSales) {
        totalRevenue += sale.total_amount;
        totalHPP += sale.hpp_total;
        totalBonus += sale.bonus_amount;
        totalProfit += sale.profit;

        if (sale.payment_method === "cash") {
          cashSales += sale.total_amount;
        } else {
          qrisSales += sale.total_amount;
        }
      }
    }

    // Get top products
    const { data: topProducts } = await supabase
      .from("sale_items")
      .select("product_id, quantity")
      .in("sale_id", todaysSales?.map((s) => s.id) || [])
      .order("quantity", { ascending: false })
      .limit(5);

    // Get barista performance
    const { data: baristaPerformance } = await supabase
      .from("sales")
      .select("barista_id, total_amount, bonus_amount")
      .eq("outlet_id", outlet_id)
      .gte("created_at", startOfDay)
      .lte("created_at", endOfDay);

    const baristaStats = new Map();
    if (baristaPerformance) {
      for (const sale of baristaPerformance) {
        if (!baristaStats.has(sale.barista_id)) {
          baristaStats.set(sale.barista_id, {
            sales: 0,
            revenue: 0,
            bonus: 0,
          });
        }
        const stat = baristaStats.get(sale.barista_id);
        stat.sales += 1;
        stat.revenue += sale.total_amount;
        stat.bonus += sale.bonus_amount;
      }
    }

    return NextResponse.json({
      date,
      totals: {
        revenue: totalRevenue,
        hpp: totalHPP,
        bonus: totalBonus,
        profit: totalProfit,
        cash_sales: cashSales,
        qris_sales: qrisSales,
        transactions: totalTransactions,
        margin_percentage:
          totalRevenue > 0 ? ((totalProfit / totalRevenue) * 100).toFixed(2) : 0,
      },
      top_products: topProducts,
      barista_performance: Array.from(baristaStats.entries()).map(
        ([barista_id, stats]) => ({
          barista_id,
          ...stats,
        })
      ),
    });
  } catch (error) {
    console.error("Dashboard API error:", error);
    return NextResponse.json(
      { error: error instanceof Error ? error.message : "Internal server error" },
      { status: 500 }
    );
  }
}
