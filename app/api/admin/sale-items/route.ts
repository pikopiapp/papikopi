import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';

export async function GET(request: Request) {
  try {
    const url = new URL(request.url);
    const saleId = url.searchParams.get('sale_id');

    let query = supabaseServer
      .from('sale_items')
      .select('*')
      .order('created_at', { ascending: false })
      .limit(1000);

    if (saleId) {
      query = query.eq('sale_id', saleId);
    }

    const { data: sale_items, error } = await query;
    if (error) throw error;

    return NextResponse.json({ sale_items });
  } catch (err: any) {
    console.error('admin sale-items error', err);
    return NextResponse.json({ error: err.message || 'Internal' }, { status: 500 });
  }
}
