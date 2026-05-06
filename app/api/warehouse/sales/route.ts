import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const batch_id = request.nextUrl.searchParams.get('batch_id');

    if (!batch_id) {
      return NextResponse.json({ error: 'batch_id required' }, { status: 400 });
    }

    console.log(`📊 GET /api/warehouse/sales - batch_id: ${batch_id}`);

    const { data, error } = await supabase
      .from('sales_records')
      .select(`
        *,
        outlets(id, name)
      `)
      .eq('batch_id', batch_id)
      .order('sale_date', { ascending: false });

    if (error) {
      console.error('❌ Error fetching sales records:', error);
      return NextResponse.json(
        { error: `Failed to fetch sales records: ${error.message}` },
        { status: 500 }
      );
    }

    console.log(`✅ Fetched ${data?.length || 0} sales records`);
    return NextResponse.json(data || []);
  } catch (error) {
    console.error('❌ Sales error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Internal error: ${errorMsg}` }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { batch_id, outlet_id, quantity_sold, sale_date, notes } = body;

    if (!batch_id || !outlet_id || quantity_sold === undefined) {
      return NextResponse.json(
        { error: 'Missing required fields: batch_id, outlet_id, quantity_sold' },
        { status: 400 }
      );
    }

    console.log(`💰 POST /api/warehouse/sales - Recording sale for batch: ${batch_id}`);

    // Get current batch info
    const { data: batchArray, error: batchError } = await supabase
      .from('product_batches')
      .select('id, quantity, status')
      .eq('id', batch_id);

    if (batchError) {
      console.error('❌ Error fetching batch:', batchError);
      return NextResponse.json(
        { error: `Failed to fetch batch: ${batchError.message}` },
        { status: 500 }
      );
    }

    if (!batchArray || batchArray.length === 0) {
      return NextResponse.json(
        { error: `Batch not found: ${batch_id}` },
        { status: 404 }
      );
    }

    const batchData = batchArray[0];
    const currentQty = batchData.quantity;
    const soldQty = Number(quantity_sold);

    if (soldQty > currentQty) {
      return NextResponse.json(
        { error: `Quantity sold (${soldQty}) exceeds available quantity (${currentQty})` },
        { status: 400 }
      );
    }

    // Record the sale
    const { data: saleData, error: saleError } = await supabase
      .from('sales_records')
      .insert([{
        batch_id,
        outlet_id,
        quantity_sold: soldQty,
        sale_date: sale_date || new Date().toISOString(),
        notes: notes || null
      }])
      .select();

    if (saleError) {
      console.error('❌ Error inserting sale record:', saleError);
      return NextResponse.json(
        { error: `Failed to record sale: ${saleError.message}` },
        { status: 500 }
      );
    }

    // Update batch quantity and status
    const remainingQty = currentQty - soldQty;
    const newStatus = remainingQty === 0 ? 'sold' : 'assigned';

    const { error: updateError } = await supabase
      .from('product_batches')
      .update({
        quantity: remainingQty,
        status: newStatus,
        updated_at: new Date().toISOString()
      })
      .eq('id', batch_id);

    if (updateError) {
      console.error('❌ Error updating batch:', updateError);
      return NextResponse.json(
        { error: `Failed to update batch: ${updateError.message}` },
        { status: 500 }
      );
    }

    console.log(`✅ Sale recorded: ${soldQty} units, remaining: ${remainingQty}, status: ${newStatus}`);
    return NextResponse.json(
      {
        sale: saleData?.[0],
        batch: {
          id: batch_id,
          quantity: remainingQty,
          status: newStatus
        }
      },
      { status: 201 }
    );
  } catch (error) {
    console.error('❌ Create sale error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Failed to create sale: ${errorMsg}` }, { status: 500 });
  }
}
