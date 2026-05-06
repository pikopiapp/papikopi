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
    // Ingredients needed for coffee specialty drinks
    const ingredients = [
      // Base coffee/beverages
      { name: 'Arabica Coffee Beans', unit: 'Kg', cost: 120000 },
      { name: 'Robusta Coffee Beans', unit: 'Kg', cost: 72000 },
      { name: 'Cold Brew Concentrate', unit: 'L', cost: 80000 },
      
      // Milk and dairy
      { name: 'Fresh Milk', unit: 'L', cost: 15000 },
      { name: 'Condensed Milk', unit: 'can', cost: 8000 },
      { name: 'Whipped Cream', unit: 'L', cost: 35000 },
      
      // Syrups and flavorings
      { name: 'Vanilla Syrup', unit: 'L', cost: 45000 },
      { name: 'Hazelnut Syrup', unit: 'L', cost: 48000 },
      { name: 'Butterscotch Syrup', unit: 'L', cost: 50000 },
      { name: 'Creme Brulee Syrup', unit: 'L', cost: 55000 },
      { name: 'Gula Aren Syrup', unit: 'L', cost: 40000 },
      { name: 'Baileys Liqueur', unit: 'L', cost: 150000 },
      
      // Sweeteners and additives
      { name: 'Sugar', unit: 'Kg', cost: 10000 },
      { name: 'Honey', unit: 'L', cost: 60000 },
      { name: 'Cinnamon Powder', unit: 'Kg', cost: 120000 },
      { name: 'Vanilla Extract', unit: 'L', cost: 80000 },
      
      // Other essentials
      { name: 'Water', unit: 'L', cost: 500 },
      { name: 'Ice', unit: 'Kg', cost: 2000 },
      { name: 'Cocoa Powder', unit: 'Kg', cost: 95000 },
    ];

    // Delete existing ingredients first (optional)
    const { error: deleteError } = await supabase
      .from('ingredients')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000');

    if (deleteError) {
      console.log('Note: Could not delete existing ingredients (may be in use)');
    }

    // Insert ingredients
    const { data: insertedIngredients, error: insertError } = await supabase
      .from('ingredients')
      .insert(ingredients)
      .select('id, name, unit, cost');

    if (insertError) {
      return Response.json(
        { error: `Failed to insert ingredients: ${insertError.message}` },
        { status: 400 }
      );
    }

    return Response.json({
      message: 'Ingredients seeded successfully',
      ingredientsCreated: insertedIngredients?.length || 0,
      ingredients: insertedIngredients,
    });
  } catch (error) {
    console.error('Error seeding ingredients:', error);
    return Response.json(
      { error: 'Failed to seed ingredients', details: String(error) },
      { status: 500 }
    );
  }
}
