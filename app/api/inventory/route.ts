import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');
    const type = request.nextUrl.searchParams.get('type') || 'ingredients';

    console.log(`📥 GET /api/inventory - type: ${type}, outlet_id: ${outlet_id}`);

    if (type === 'products') {
      // Fetch product batches for this outlet
      if (!outlet_id) {
        return NextResponse.json({ error: 'outlet_id required for products' }, { status: 400 });
      }

      console.log('🔍 Fetching product_batches...');
      const { data, error } = await supabase
        .from('product_batches')
        .select('*, products(id, name, price)')
        .eq('outlet_id', outlet_id)
        .neq('status', 'expired')
        .order('created_at', { ascending: false });

      if (error) {
        console.error('❌ Error fetching product_batches:', error);
        return NextResponse.json(
          { error: `Failed to fetch product_batches: ${error.message}` },
          { status: 500 }
        );
      }

      console.log(`✅ Fetched ${data?.length || 0} product batches`);
      return NextResponse.json(data || []);
    } else {
      // Fetch all warehouse ingredients (centralized inventory)
      console.log('🔍 Fetching ingredients from warehouse...');
      
      const { data, error } = await supabase
        .from('ingredients')
        .select('id, name, unit, cost');

      if (error) {
        console.error('❌ Error fetching ingredients:', error);
        console.error('Error details:', {
          message: error.message,
          code: (error as any).code,
          details: (error as any).details
        });
        return NextResponse.json(
          { error: `Failed to fetch ingredients: ${error.message}`, code: (error as any).code },
          { status: 500 }
        );
      }

      console.log(`✅ Fetched ${data?.length || 0} ingredients from warehouse`);
      return NextResponse.json(data || []);
    }
  } catch (error) {
    console.error('❌ Inventory error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    const errorStack = error instanceof Error ? error.stack : '';
    console.error('Error stack:', errorStack);
    return NextResponse.json(
      { 
        error: `Internal error: ${errorMsg}`,
        details: errorStack
      }, 
      { status: 500 }
    );
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, ingredient_id, quantity, name, unit, cost } = body;

    // If this is a warehouse ingredient add request (has name/unit/cost)
    if (name && unit && cost !== undefined) {
      console.log('📝 POST /api/inventory - Adding new ingredient');
      
      const { data, error } = await supabase
        .from('ingredients')
        .insert([{
          name,
          unit,
          cost: Number(cost)
        }])
        .select();

      if (error) {
        console.error('❌ Error inserting ingredient:', error);
        return NextResponse.json({ error: `Failed to add ingredient: ${error.message}` }, { status: 500 });
      }

      console.log(`✅ Added new ingredient: ${name}`);
      return NextResponse.json(data?.[0], { status: 201 });
    }

    // Otherwise it's an outlet stock upsert (legacy)
    if (!outlet_id || !ingredient_id || quantity === undefined) {
      return NextResponse.json({ error: 'Missing required fields' }, { status: 400 });
    }

    const { data, error } = await supabase
      .from('outlet_stock')
      .upsert([{ outlet_id, ingredient_id, quantity }], { onConflict: 'outlet_id,ingredient_id' })
      .select();

    if (error) throw error;

    return NextResponse.json(data?.[0], { status: 201 });
  } catch (error) {
    console.error('Create inventory error:', error);
    return NextResponse.json({ error: 'Failed to create inventory' }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, unit, cost } = body;

    if (!id || !name || !unit || cost === undefined) {
      return NextResponse.json(
        { error: 'Missing required fields: id, name, unit, cost' },
        { status: 400 }
      );
    }

    console.log(`✏️ PUT /api/inventory - Updating ingredient: ${id}`);

    const { data, error } = await supabase
      .from('ingredients')
      .update({
        name,
        unit,
        cost: Number(cost),
        updated_at: new Date().toISOString()
      })
      .eq('id', id)
      .select();

    if (error) {
      console.error('❌ Error updating ingredient:', error);
      return NextResponse.json({ error: `Failed to update ingredient: ${error.message}` }, { status: 500 });
    }

    if (!data || data.length === 0) {
      return NextResponse.json({ error: 'Ingredient not found' }, { status: 404 });
    }

    console.log(`✅ Updated ingredient: ${name}`);
    return NextResponse.json(data[0]);
  } catch (error) {
    console.error('Update inventory error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Failed to update inventory: ${errorMsg}` }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    console.log(`🗑️ DELETE /api/inventory - Deleting ingredient: ${id}`);

    const { error } = await supabase
      .from('ingredients')
      .delete()
      .eq('id', id);

    if (error) {
      console.error('❌ Error deleting ingredient:', error);
      return NextResponse.json({ error: `Failed to delete ingredient: ${error.message}` }, { status: 500 });
    }

    console.log(`✅ Deleted ingredient: ${id}`);
    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Delete inventory error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Failed to delete inventory: ${errorMsg}` }, { status: 500 });
  }
}
