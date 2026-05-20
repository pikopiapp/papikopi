import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// Generate batch code: BATCH-YYYYMMDD-XXX
function generateBatchCode(date: Date): string {
  const dateStr = date.toISOString().slice(0, 10).replace(/-/g, '');
  const random = Math.floor(Math.random() * 1000).toString().padStart(3, '0');
  return `BATCH-${dateStr}-${random}`;
}

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');
    const status = request.nextUrl.searchParams.get('status');

    // Get batches
    let query = supabase
      .from('product_batches')
      .select('*')
      .order('created_at', { ascending: false });

    if (outlet_id) {
      query = query.eq('outlet_id', outlet_id);
    }

    if (status) {
      query = query.eq('status', status);
    }

    const { data: batches, error: batchError } = await query;

    console.log('Batches fetched:', { count: batches?.length, error: batchError });

    if (batchError) throw batchError;

    if (!batches || batches.length === 0) {
      return NextResponse.json([]);
    }

    // Get unique product IDs and outlet IDs
    const productIds = [...new Set(batches.map((b: any) => b.product_id))];
    const outletIds = [...new Set(batches.map((b: any) => b.outlet_id).filter(Boolean))];

    // Fetch products and outlets in parallel (2 queries instead of N queries)
    const [productsResult, outletsResult] = await Promise.all([
      productIds.length > 0 ? supabase.from('products').select('id, name').in('id', productIds) : Promise.resolve({ data: [] }),
      outletIds.length > 0 ? supabase.from('outlets').select('id, name').in('id', outletIds) : Promise.resolve({ data: [] }),
    ]);

    const productMap = new Map((productsResult.data || []).map((p: any) => [p.id, p.name]));
    const outletMap = new Map((outletsResult.data || []).map((o: any) => [o.id, o.name]));

    // Transform to include product_name and outlet_name
    const transformed = batches.map((item: any) => ({
      ...item,
      product_name: productMap.get(item.product_id) || 'Unknown',
      outlet_name: item.outlet_id ? outletMap.get(item.outlet_id) || null : null,
    }));

    return NextResponse.json(transformed);
  } catch (error) {
    console.error('Warehouse batches error:', error);
    return NextResponse.json({ error: 'Failed to fetch batches' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { product_id, quantity, production_date, expired_date, notes } = body;

    console.log('Creating batch with data:', body);

    if (!product_id || !quantity || !production_date) {
      return NextResponse.json(
        { error: 'product_id, quantity, and production_date are required' },
        { status: 400 }
      );
    }

    // Generate unique batch code
    const batchCode = generateBatchCode(new Date(production_date));

    const insertData = {
      batch_code: batchCode,
      product_id,
      quantity,
      production_date,
      expired_date: expired_date || null,
      status: 'ready',
      notes: notes || null,
    };
    
    console.log('Insert data:', insertData);

    const { data, error } = await supabase
      .from('product_batches')
      .insert([insertData])
      .select();

    console.log('Insert result:', { data, error });

    if (error) {
      console.error('Supabase insert error:', error);
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data?.[0] || data, { status: 201 });
  } catch (error) {
    console.error('Create batch error:', error);
    return NextResponse.json({ error: String(error) }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, quantity, outlet_id, status, notes } = body;

    if (!id) {
      return NextResponse.json({ error: 'id is required' }, { status: 400 });
    }

    const updateData: Record<string, unknown> = {};
    if (quantity !== undefined) updateData.quantity = quantity;
    if (outlet_id !== undefined) updateData.outlet_id = outlet_id;
    if (status !== undefined) updateData.status = status;
    if (notes !== undefined) updateData.notes = notes;

    const { data, error } = await supabase
      .from('product_batches')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(data);
  } catch (error) {
    console.error('Update batch error:', error);
    return NextResponse.json({ error: 'Failed to update batch' }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id is required' }, { status: 400 });
    }

    // Hard delete - remove from database
    const { error } = await supabase
      .from('product_batches')
      .delete()
      .eq('id', id);

    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Delete batch error:', error);
    return NextResponse.json({ error: 'Failed to delete batch' }, { status: 500 });
  }
}
