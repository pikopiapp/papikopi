import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  return handleSeed();
}

export async function POST() {
  return handleSeed();
}

async function handleSeed() {
  try {
    // Fetch all outlets
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id');

    if (outletsError || !outlets || outlets.length === 0) {
      return Response.json(
        { error: 'No outlets found' },
        { status: 400 }
      );
    }

    // Fetch all products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('id');

    if (productsError || !products || products.length === 0) {
      return Response.json(
        { error: 'No products found' },
        { status: 400 }
      );
    }

    // Generate stock data for each outlet and product combination
    const stockData = outlets.flatMap((outlet: any) =>
      products.map((product: any, idx: number) => ({
        outlet_id: outlet.id,
        product_id: product.id,
        quantity: Math.floor(Math.random() * 200) + 50, // Random between 50-250
        updated_at: new Date().toISOString(),
      }))
    );

    // Delete existing stock data
    const { error: deleteError } = await supabase
      .from('outlet_stock')
      .delete()
      .neq('outlet_id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteError) {
      console.warn('Delete warning:', deleteError.message);
    }

    // Insert stock data
    const { data, error } = await supabase
      .from('outlet_stock')
      .insert(stockData)
      .select();

    if (error) {
      console.error('Supabase error:', error);
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json({
      message: `Successfully created ${data?.length || 0} outlet stock records`,
      count: data?.length || 0,
    });
  } catch (error) {
    console.error('Error seeding outlet stock:', error);
    return Response.json(
      { error: 'Failed to seed outlet stock' },
      { status: 500 }
    );
  }
}
