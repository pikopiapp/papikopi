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

    if (!batch_id) {
      return NextResponse.json(
        { success: false, error: 'batch_id is required' },
        { status: 400 }
      );
    }

    // Get the batch with product details
    const { data: batch, error: batchError } = await supabase
      .from('product_batches')
      .select('id, batch_code, product_id, quantity, production_date, expired_date, status, outlet_id, notes, created_at, updated_at')
      .eq('id', batch_id)
      .single();

    if (batchError || !batch) {
      return NextResponse.json(
        { success: false, error: 'Batch not found' },
        { status: 404 }
      );
    }

    // Get product name separately
    const { data: product, error: productError } = await supabase
      .from('products')
      .select('id, name')
      .eq('id', batch.product_id)
      .single();

    if (productError || !product) {
      return NextResponse.json(
        { success: false, error: 'Product not found' },
        { status: 404 }
      );
    }

    // Get product name
    const productName = product.name;
    if (!productName) {
      return NextResponse.json(
        { success: false, error: 'Product name not found' },
        { status: 400 }
      );
    }

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
          last_updated: new Date().toISOString(),
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
    await supabase
      .from('product_batches')
      .update({ status: 'sent_to_showcase' })
      .eq('id', batch_id);

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
    console.error('Send batch error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
