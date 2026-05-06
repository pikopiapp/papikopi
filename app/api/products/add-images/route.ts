import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  return handleMigration();
}

export async function POST() {
  return handleMigration();
}

async function handleMigration() {
  try {
    // First, try to get the products to check if column exists
    const { data: testProducts, error: testError } = await supabase
      .from('products')
      .select('id, name, image_url')
      .limit(1);

    if (testError) {
      // If error includes "could not find column", we need to add it
      if (testError.message.includes('image_url')) {
        console.log('Column does not exist, trying to add it via Supabase custom SQL...');
        // This won't work through Supabase JS client, need manual SQL execution
        return Response.json({
          message: 'Column image_url does not exist',
          instruction: 'Please run this SQL manually in Supabase SQL Editor: ALTER TABLE products ADD COLUMN image_url VARCHAR(255);',
          sqlToRun: 'ALTER TABLE products ADD COLUMN image_url VARCHAR(255);',
          nextStep: 'After adding column, call this endpoint again',
        }, { status: 400 });
      }
    }

    // Image mapping based on product base names
    const imageMap: { [key: string]: string } = {
      'Vanilla': '/product/Vanilla.png',
      'Baileys': '/product/Baileys.png',
      'Hazelnut': '/product/Hazelnut.png',
      'Butterscotch': '/product/Butterscotch.png',
      'Creme Brulee': '/product/Creme Brulee.png',
      'Cold Brew': '/product/Cold Brew.png',
      'Gula Aren': '/product/GulaAren.png',
    };

    // Fetch all products
    const { data: products, error: fetchError } = await supabase
      .from('products')
      .select('id, name');

    if (fetchError) {
      return Response.json({ error: fetchError.message }, { status: 400 });
    }

    if (!products || products.length === 0) {
      return Response.json({ error: 'No products found' }, { status: 400 });
    }

    // Update each product with image_url
    const updatePromises = products.map(product => {
      // Extract base product name (without variant)
      const baseName = product.name.replace(/\s*\([^)]*\)\s*$/, '');
      const imageUrl = imageMap[baseName] || '/product/default.png';

      return supabase
        .from('products')
        .update({ image_url: imageUrl })
        .eq('id', product.id);
    });

    const results = await Promise.all(updatePromises);

    // Check for errors
    const errors = results.filter(r => r.error);
    if (errors.length > 0) {
      console.error('Update errors:', errors);
    }

    // Fetch updated products to return
    const { data: updatedProducts } = await supabase
      .from('products')
      .select('id, name, price, image_url')
      .order('name');

    return Response.json({
      message: 'Products updated with image URLs successfully',
      productsUpdated: products.length,
      errors: errors.length > 0 ? errors[0].error?.message : null,
      products: updatedProducts,
    });
  } catch (error) {
    console.error('Error updating products:', error);
    return Response.json(
      { error: 'Failed to update products', details: String(error) },
      { status: 500 }
    );
  }
}
