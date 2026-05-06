import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  return handleReset();
}

export async function POST() {
  return handleReset();
}

async function handleReset() {
  try {
    // Delete all existing products
    const { error: deleteError } = await supabase
      .from('products')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteError) {
      console.error('Delete error:', deleteError);
      return Response.json({ error: deleteError.message }, { status: 400 });
    }

    // Get or create category
    const { data: categories, error: catError } = await supabase
      .from('categories')
      .select('id')
      .eq('name', 'Kopi Spesial')
      .limit(1);

    if (catError) {
      return Response.json({ error: catError.message }, { status: 400 });
    }

    let categoryId: string;
    
    if (!categories || categories.length === 0) {
      const { data: newCat, error: newCatError } = await supabase
        .from('categories')
        .insert([{ name: 'Kopi Spesial' }])
        .select('id')
        .single();

      if (newCatError) {
        return Response.json({ error: newCatError.message }, { status: 400 });
      }
      categoryId = newCat.id;
    } else {
      categoryId = categories[0].id;
    }

    // Product definitions with base prices
    const productDefinitions = [
      { name: 'Vanilla', basePrice: 25000 },
      { name: 'Baileys', basePrice: 28000 },
      { name: 'Hazelnut', basePrice: 26000 },
      { name: 'Butterscotch', basePrice: 27000 },
      { name: 'Creme Brulee', basePrice: 29000 },
      { name: 'Cold Brew', basePrice: 24000 },
      { name: 'Gula Aren', basePrice: 23000 },
    ];

    // Create products with variants
    const productsToCreate: any[] = [];
    const variants = ['(M)', '(1 L)'];
    const hpp = 8000; // HPP per product
    
    for (const product of productDefinitions) {
      for (const variant of variants) {
        const priceMultiplier = variant === '(1 L)' ? 1.4 : 1; // 1L is 40% more expensive
        productsToCreate.push({
          name: `${product.name} ${variant}`,
          price: Math.round(product.basePrice * priceMultiplier),
          category_id: categoryId,
          hpp: hpp,
          is_active: true,
        });
      }
    }

    // Insert products
    const { data: insertedProducts, error: insertError } = await supabase
      .from('products')
      .insert(productsToCreate)
      .select('id, name, price');

    if (insertError) {
      return Response.json(
        { error: `Failed to insert products: ${insertError.message}` },
        { status: 400 }
      );
    }

    return Response.json({
      message: 'Products reset and recreated successfully',
      categoryId,
      productsCreated: insertedProducts?.length || 0,
      products: insertedProducts,
    });
  } catch (error) {
    console.error('Error resetting products:', error);
    return Response.json(
      { error: 'Failed to reset products', details: String(error) },
      { status: 500 }
    );
  }
}
