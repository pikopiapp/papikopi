import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';
import { getBusinessDayDate, parseTimestampAsJakarta, getBusinessDayRange } from '@/lib/helpers/business-day';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest, { params }: { params: Promise<{ outletId: string }> }) {
  try {
    const { outletId } = await params;
    const url = new URL(request.url);
    const dateParam = url.searchParams.get('date');
    const BUSINESS_DAY_START_HOUR = 4;
    const selectedDate = dateParam ? new Date(dateParam) : new Date();
    const selectedBusinessDay = new Date(selectedDate.getFullYear(), selectedDate.getMonth(), selectedDate.getDate());
    const { start: businessDayStart, end: businessDayEnd } = getBusinessDayRange(selectedBusinessDay, BUSINESS_DAY_START_HOUR);
    
    // Get outlet info
    const { data: outlet, error: outletError } = await supabase
      .from('outlets')
      .select('*')
      .eq('id', outletId)
      .single();

    if (outletError) throw outletError;

    // Get all sales for this outlet (without nested select to avoid schema cache issues)
    const { data: sales, error: salesError } = await supabase
      .from('sales')
      .select('id, outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at')
      .eq('outlet_id', outletId)
      .order('created_at', { ascending: false });

    if (salesError) throw salesError;

    // Get barista names for sales
    const baristMap = new Map<string, string>();
    if (sales && sales.length > 0) {
      const baristaIds = [...new Set((sales || []).map((s: any) => s.barista_id))];
      const { data: baristas } = await supabase
        .from('users')
        .select('id, name')
        .in('id', baristaIds);
      
      (baristas || []).forEach((b: any) => {
        baristMap.set(b.id, b.name);
      });
    }

    // Get sale items for all sales
    const saleIds = (sales || []).map((s: any) => s.id);
    const saleItemsMap = new Map<string, any[]>();
    if (saleIds.length > 0) {
      const { data: items } = await supabase
        .from('sale_items')
        .select('*')
        .in('sale_id', saleIds);
      
      (items || []).forEach((item: any) => {
        if (!saleItemsMap.has(item.sale_id)) {
          saleItemsMap.set(item.sale_id, []);
        }
        saleItemsMap.get(item.sale_id)!.push(item);
      });
    }

    // Reconstruct sales with related data and add normalized timestamp fields
    const salesWithData = (sales || []).map((sale: any) => {
      const jakartaInstant = parseTimestampAsJakarta(sale.created_at);
      const pad = (n: number, len = 2) => String(n).padStart(len, '0');
      const createdAtJakarta = `${jakartaInstant.getFullYear()}-${pad(jakartaInstant.getMonth() + 1)}-${pad(jakartaInstant.getDate())}T${pad(jakartaInstant.getHours())}:${pad(jakartaInstant.getMinutes())}:${pad(jakartaInstant.getSeconds())}.${String(jakartaInstant.getMilliseconds()).padStart(3,'0')}+07:00`;
      const createdAtUtc = jakartaInstant.toISOString();
      const bizDate = getBusinessDayDate(jakartaInstant, 4);
      const { start: bizStart, end: bizEnd } = getBusinessDayRange(bizDate, 4);

      return {
        ...sale,
        sale_items: saleItemsMap.get(sale.id) || [],
        users: { name: baristMap.get(sale.barista_id) },
        created_at_jakarta: createdAtJakarta,
        created_at_utc: createdAtUtc,
        business_day: bizDate.toISOString().slice(0, 10),
        business_day_start_utc: bizStart.toISOString(),
        business_day_end_utc: bizEnd.toISOString(),
      };
    });

    // Calculate metrics
    const totalRevenue = (salesWithData || []).reduce((sum, s) => sum + Number(s.total_amount), 0);
    const totalProfit = (salesWithData || []).reduce((sum, s) => sum + Number(s.profit), 0);
    const totalBonus = (salesWithData || []).reduce((sum, s) => sum + Number(s.bonus_amount), 0);
    const totalHpp = (salesWithData || []).reduce((sum, s) => sum + Number(s.hpp_total), 0);
    const totalTransactions = salesWithData?.length || 0;
    const totalCupsSold = (salesWithData || []).reduce((sum, sale) => {
      const items = Array.isArray(sale.sale_items) ? sale.sale_items : [];
      return sum + items.reduce((itemSum: number, item: any) => itemSum + Number(item.quantity || 0), 0);
    }, 0);

    // Sales for the selected business day (Asia/Jakarta, 04:00 cutoff)
    const todaysSales = (salesWithData || []).filter((s: any) => {
      try {
        const createdUtc = s.created_at_utc || (s.created_at_jakarta ? parseTimestampAsJakarta(s.created_at_jakarta).toISOString() : s.created_at);
        if (!createdUtc) return false;

        const t = new Date(createdUtc).getTime();
        return t >= businessDayStart.getTime() && t <= businessDayEnd.getTime();
      } catch (err) {
        return false;
      }
    });
    const todayRevenue = todaysSales.reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);
    const todayTransactions = todaysSales.length;

    // Product sales breakdown
    const productSales = new Map<string, { quantity: number; revenue: number }>();
    (salesWithData || []).forEach((sale: any) => {
      sale.sale_items?.forEach((item: { product_id: string; quantity: number; price: number }) => {
        const existing = productSales.get(item.product_id) || { quantity: 0, revenue: 0 };
        productSales.set(item.product_id, {
          quantity: existing.quantity + item.quantity,
          revenue: existing.revenue + (item.price * item.quantity)
        });
      });
    });

    // Get product details for the sales
    const productIds = [...productSales.keys()];
    let productDetails: any[] = [];
    if (productIds.length > 0) {
      const { data: products } = await supabase
        .from('products')
        .select('id, name')
        .in('id', productIds);
      productDetails = products || [];
    }

    // Create product sales summary
    const productSalesSummary = productDetails.map((p: any) => ({
      product_id: p.id,
      product_name: p.name,
      quantity: productSales.get(p.id)?.quantity || 0,
      revenue: productSales.get(p.id)?.revenue || 0
    })).sort((a, b) => b.revenue - a.revenue);

    // Get assigned barista
    const { data: assignedBarista } = await supabase
      .from('users')
      .select('id, name, email')
      .eq('outlet_id', outletId)
      .eq('role', 'barista')
      .limit(1);

    // Get product batches for this outlet (without nested select to avoid schema cache issues)
    const { data: batches, error: batchesError } = await supabase
      .from('product_batches')
      .select('id, product_id, quantity, batch_code, production_date, expired_date')
      .eq('outlet_id', outletId)
      .eq('status', 'assigned')
      .gt('quantity', 0);

    if (batchesError) {
      console.error('Product batches error:', batchesError);
      throw batchesError;
    }

    // Get product names for batch
    const productBatchMap = new Map<string, string>();
    if (batches && batches.length > 0) {
      const productIds = [...new Set((batches || []).map((b: any) => b.product_id))];
      const { data: products } = await supabase
        .from('products')
        .select('id, name')
        .in('id', productIds);
      
      (products || []).forEach((p: any) => {
        productBatchMap.set(p.id, p.name);
      });
    }

    // Calculate available product quantity
    const productQuantityMap = new Map<string, number>();
    (batches || []).forEach((batch: any) => {
      const current = productQuantityMap.get(batch.product_id) || 0;
      productQuantityMap.set(batch.product_id, current + batch.quantity);
    });

    const productsWithQuantity = (batches || []).map((batch: any) => ({
      product_id: batch.product_id,
      product_name: productBatchMap.get(batch.product_id),
      quantity: batch.quantity,
      batch_code: batch.batch_code,
      production_date: batch.production_date,
      expired_date: batch.expired_date
    }));

    // Payment method breakdown (calculate for the selected business-day)
    // Normalize payment_method to lowercase to tolerate variations in stored values
    const cashSalesAll = (salesWithData || []).filter((s: any) => String(s.payment_method || '').toLowerCase() === 'cash');
    const qrisSalesAll = (salesWithData || []).filter((s: any) => String(s.payment_method || '').toLowerCase() === 'qris');
    const cashRevenueAll = cashSalesAll.reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);
    const qrisRevenueAll = qrisSalesAll.reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);

    // Also compute cash/qris revenue for the current business day (today)
    const cashRevenueToday = todaysSales
      .filter((s: any) => String(s.payment_method || '').toLowerCase() === 'cash')
      .reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);
    const qrisRevenueToday = todaysSales
      .filter((s: any) => String(s.payment_method || '').toLowerCase() === 'qris')
      .reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);

    // Respect optional `limit` query param to control how many recent sales to return.
    const limitParam = url.searchParams.get('limit');
    const limit = limitParam ? parseInt(limitParam, 10) : 10;

    const recentSalesToReturn = (limit && limit > 0) ? (salesWithData?.slice(0, limit) || []) : (salesWithData || []);

    return NextResponse.json({
      outlet,
      assigned_barista: assignedBarista?.[0] || null,
      sales_summary: {
        total_revenue: totalRevenue,
        total_profit: totalProfit,
        total_bonus: totalBonus,
        total_hpp: totalHpp,
        total_transactions: totalTransactions,
        today_revenue: todayRevenue,
        today_transactions: todayTransactions,
        total_cups_sold: totalCupsSold,
        // Expose both today's and all-time payment breakdown; UI expects today's values here
        cash_revenue: cashRevenueToday,
        qris_revenue: qrisRevenueToday,
        cash_revenue_all: cashRevenueAll,
        qris_revenue_all: qrisRevenueAll
      },
      product_sales: productSalesSummary,
      product_batches: productsWithQuantity,
      recent_sales: recentSalesToReturn
    });
  } catch (error) {
    console.error('Get outlet details error:', error);
    return NextResponse.json({ error: 'Failed to fetch outlet details' }, { status: 500 });
  }
}
