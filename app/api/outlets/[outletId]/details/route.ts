import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest, { params }: { params: Promise<{ outletId: string }> }) {
  try {
    const { outletId } = await params;
    
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
    let baristMap = new Map<string, string>();
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
    let saleItemsMap = new Map<string, any[]>();
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

    // Reconstruct sales with related data
    const salesWithData = (sales || []).map((sale: any) => ({
      ...sale,
      sale_items: saleItemsMap.get(sale.id) || [],
      users: { name: baristMap.get(sale.barista_id) }
    }));

    // Calculate metrics
    const totalRevenue = (salesWithData || []).reduce((sum, s) => sum + Number(s.total_amount), 0);
    const totalProfit = (salesWithData || []).reduce((sum, s) => sum + Number(s.profit), 0);
    const totalBonus = (salesWithData || []).reduce((sum, s) => sum + Number(s.bonus_amount), 0);
    const totalHpp = (salesWithData || []).reduce((sum, s) => sum + Number(s.hpp_total), 0);
    const totalTransactions = salesWithData?.length || 0;

    // Today's sales
    const today = new Date().toISOString().split('T')[0];
    const todaysSales = (salesWithData || []).filter((s: any) => s.created_at.startsWith(today));
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
    let productBatchMap = new Map<string, string>();
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

    // Payment method breakdown
    const cashSales = (salesWithData || []).filter((s: any) => s.payment_method === 'cash');
    const qrisSales = (salesWithData || []).filter((s: any) => s.payment_method === 'qris');
    const cashRevenue = cashSales.reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);
    const qrisRevenue = qrisSales.reduce((sum: number, s: any) => sum + Number(s.total_amount), 0);

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
        cash_revenue: cashRevenue,
        qris_revenue: qrisRevenue
      },
      product_sales: productSalesSummary,
      product_batches: productsWithQuantity,
      recent_sales: salesWithData?.slice(0, 10) || []
    });
  } catch (error) {
    console.error('Get outlet details error:', error);
    return NextResponse.json({ error: 'Failed to fetch outlet details' }, { status: 500 });
  }
}
