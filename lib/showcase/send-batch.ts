import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL || '',
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
);

export interface SendBatchResult {
  status: number;
  body: Record<string, unknown>;
}

/**
 * Send a production batch to the showcase.
 *
 * Shared by /api/batch-to-showcase and /api/showcase/send-batch so the two URLs keep
 * working but cannot drift apart. Returns a status/body pair; route handlers only wrap it.
 */
export async function sendBatchToShowcase(batchId: string | undefined | null): Promise<SendBatchResult> {
  if (!batchId) {
    return { status: 400, body: { success: false, error: 'batch_id is required' } };
  }

  const { data: batch, error: batchError } = await supabase
    .from('product_batches')
    .select('id, batch_code, product_id, quantity, production_date, expired_date, status, outlet_id, notes, created_at, updated_at')
    .eq('id', batchId)
    .single();

  if (batchError || !batch) {
    return { status: 404, body: { success: false, error: 'Batch not found' } };
  }

  const { data: product, error: productError } = await supabase
    .from('products')
    .select('id, name')
    .eq('id', batch.product_id)
    .single();

  if (productError || !product?.name) {
    return { status: 400, body: { success: false, error: 'Product name not found' } };
  }

  const { data: existingLog } = await supabase
    .from('showcase_batch_logs')
    .select('id')
    .eq('batch_id', batchId)
    .maybeSingle();

  if (existingLog) {
    return { status: 400, body: { success: false, error: 'Batch sudah dikirim ke showcase', alreadySent: true } };
  }

  const { data: showcaseProduct, error: showcaseError } = await supabase
    .from('showcase_products')
    .select('id, total_quantity')
    .eq('product_id', batch.product_id)
    .maybeSingle();

  if (showcaseError) {
    return { status: 500, body: { success: false, error: `Failed to read showcase product: ${showcaseError.message}` } };
  }

  let showcaseProductId = showcaseProduct?.id;

  if (!showcaseProduct) {
    const { data: newProduct, error: insertError } = await supabase
      .from('showcase_products')
      .insert({
        product_id: batch.product_id,
        product_name: product.name,
        total_quantity: batch.quantity,
      })
      .select('id')
      .single();

    if (insertError) {
      return { status: 500, body: { success: false, error: `Failed to create showcase product: ${insertError.message}` } };
    }

    showcaseProductId = newProduct.id;
  } else {
    const { error: updateError } = await supabase
      .from('showcase_products')
      .update({
        total_quantity: Number(showcaseProduct.total_quantity || 0) + Number(batch.quantity || 0),
        last_updated: new Date().toISOString(),
      })
      .eq('id', showcaseProduct.id);

    if (updateError) {
      return { status: 500, body: { success: false, error: `Failed to update showcase product: ${updateError.message}` } };
    }
  }

  const { error: logError } = await supabase
    .from('showcase_batch_logs')
    .insert({
      batch_id: batchId,
      showcase_product_id: showcaseProductId,
      quantity_sent: batch.quantity,
    });

  if (logError) {
    return { status: 500, body: { success: false, error: `Failed to log batch: ${logError.message}` } };
  }

  const { error: statusError } = await supabase
    .from('product_batches')
    .update({ status: 'sent_to_showcase' })
    .eq('id', batchId);

  if (statusError) {
    return { status: 500, body: { success: false, error: `Failed to update batch status: ${statusError.message}` } };
  }

  return {
    status: 200,
    body: {
      success: true,
      message: `✅ ${product.name} (${batch.quantity} pcs) berhasil dikirim ke showcase!`,
      data: {
        batch_id: batchId,
        product_name: product.name,
        quantity_sent: batch.quantity,
        showcase_product_id: showcaseProductId,
      },
    },
  };
}
