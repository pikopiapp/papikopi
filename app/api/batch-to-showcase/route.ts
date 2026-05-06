import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

interface SendBatchRequest {
  batch_id: string;
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { batch_id } = body as SendBatchRequest;
    
    console.log('🔵 Starting batch-to-showcase with batch_id:', batch_id);

    if (!batch_id) {
      return NextResponse.json(
        { success: false, error: 'Batch ID diperlukan' },
        { status: 400 }
      );
    }

    // Get the batch with product details
    const { data: batch, error: batchError } = await supabase
      .from('product_batches')
      .select('*')
      .eq('id', batch_id)
      .single();

    if (batchError || !batch) {
      console.error('Batch fetch error:', batchError);
      return NextResponse.json(
        { success: false, error: 'Batch tidak ditemukan', details: batchError?.message },
        { status: 400 }
      );
    }

    // Get product name from products table
    const { data: product } = await supabase
      .from('products')
      .select('name')
      .eq('id', batch.product_id)
      .single();

    const productName = product?.name || 'Unknown Product';

    // Check if batch already sent to showcase
    const { data: existingLog } = await supabase
      .from('showcase_batch_logs')
      .select('id')
      .eq('batch_id', batch_id)
      .single();

    if (existingLog) {
      return NextResponse.json(
        { success: false, error: 'Batch sudah dikirim ke showcase', alreadySent: true },
        { status: 400 }
      );
    }

    // Get or create showcase product entry
    const { data: showcaseProduct } = await supabase
      .from('showcase_products')
      .select('id, total_quantity')
      .eq('product_id', batch.product_id)
      .single();

    let showcaseProductId = showcaseProduct?.id;

    if (!showcaseProduct) {
      // Create new showcase product entry
      const { data: newProduct, error: insertError } = await supabase
        .from('showcase_products')
        .insert({
          product_id: batch.product_id,
          product_name: productName,
          total_quantity: batch.quantity,
        })
        .select('id')
        .single();

      if (insertError) {
        return NextResponse.json(
          { success: false, error: `Failed to create showcase product: ${insertError.message}` },
          { status: 500 }
        );
      }

      showcaseProductId = newProduct.id;
    } else {
      // Update existing showcase product - add quantity
      const { error: updateError } = await supabase
        .from('showcase_products')
        .update({
          total_quantity: showcaseProduct.total_quantity + batch.quantity,
        })
        .eq('id', showcaseProduct.id);

      if (updateError) {
        return NextResponse.json(
          { success: false, error: `Failed to update showcase product: ${updateError.message}` },
          { status: 500 }
        );
      }
    }

    // Create batch log entry
    const { error: logError } = await supabase
      .from('showcase_batch_logs')
      .insert({
        batch_id,
        showcase_product_id: showcaseProductId,
        quantity_sent: batch.quantity,
      });

    if (logError) {
      return NextResponse.json(
        { success: false, error: `Failed to log batch: ${logError.message}` },
        { status: 500 }
      );
    }

    // Update batch status to 'sent_to_showcase'
    console.log('🟡 Updating batch status for batch_id:', batch_id);
    const { data: updateData, error: statusError } = await supabase
      .from('product_batches')
      .update({ status: 'sent_to_showcase' })
      .eq('id', batch_id)
      .select();

    console.log('🟡 Update result:', { updateData, statusError });

    if (statusError) {
      console.error('🔴 Status update error:', statusError);
      return NextResponse.json(
        { success: false, error: `Failed to update batch status: ${statusError.message}` },
        { status: 500 }
      );
    }

    return NextResponse.json(
      {
        success: true,
        message: `✅ ${productName} (${batch.quantity} pcs) berhasil dikirim ke showcase!`,
        data: {
          batch_id,
          product_name: productName,
          quantity_sent: batch.quantity,
          showcase_product_id: showcaseProductId,
        },
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('🔴 Send batch error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
