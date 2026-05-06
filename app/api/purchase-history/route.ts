import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const ingredient_id = request.nextUrl.searchParams.get('ingredient_id');

    if (!ingredient_id) {
      return NextResponse.json({ error: 'ingredient_id required' }, { status: 400 });
    }

    console.log(`📋 GET /api/purchase-history - ingredient_id: ${ingredient_id}`);

    const { data, error } = await supabase
      .from('purchase_history')
      .select('*')
      .eq('ingredient_id', ingredient_id)
      .order('purchase_date', { ascending: false });

    if (error) {
      console.error('❌ Error fetching purchase history:', error);
      return NextResponse.json(
        { error: `Failed to fetch purchase history: ${error.message}` },
        { status: 500 }
      );
    }

    console.log(`✅ Fetched ${data?.length || 0} purchase records`);
    return NextResponse.json(data || []);
  } catch (error) {
    console.error('❌ Purchase history error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Internal error: ${errorMsg}` }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { ingredient_id, quantity, unit_price, supplier, notes, purchase_date } = body;

    if (!ingredient_id || quantity === undefined || unit_price === undefined) {
      return NextResponse.json(
        { error: 'Missing required fields: ingredient_id, quantity, unit_price' },
        { status: 400 }
      );
    }

    console.log(`💰 POST /api/purchase-history - Creating purchase record for ingredient: ${ingredient_id}`);

    // Start transaction-like operation: record purchase and update ingredient quantity
    const { data: purchaseData, error: purchaseError } = await supabase
      .from('purchase_history')
      .insert([{
        ingredient_id,
        quantity: Number(quantity),
        unit_price: Number(unit_price),
        supplier: supplier || null,
        notes: notes || null,
        purchase_date: purchase_date || new Date().toISOString()
      }])
      .select();

    if (purchaseError) {
      console.error('❌ Error inserting purchase record:', purchaseError);
      return NextResponse.json(
        { error: `Failed to record purchase: ${purchaseError.message}` },
        { status: 500 }
      );
    }

    // Update ingredient quantity
    const { data: ingredientData, error: getError } = await supabase
      .from('ingredients')
      .select('quantity')
      .eq('id', ingredient_id)
      .single();

    if (getError) {
      console.error('❌ Error fetching ingredient:', getError);
      return NextResponse.json(
        { error: `Failed to fetch ingredient: ${getError.message}` },
        { status: 500 }
      );
    }

    const currentQuantity = ingredientData?.quantity || 0;
    const newQuantity = Number(currentQuantity) + Number(quantity);

    const { error: updateError } = await supabase
      .from('ingredients')
      .update({ quantity: newQuantity, updated_at: new Date().toISOString() })
      .eq('id', ingredient_id);

    if (updateError) {
      console.error('❌ Error updating ingredient quantity:', updateError);
      return NextResponse.json(
        { error: `Failed to update quantity: ${updateError.message}` },
        { status: 500 }
      );
    }

    console.log(`✅ Purchase recorded and quantity updated: ${currentQuantity} + ${quantity} = ${newQuantity}`);
    return NextResponse.json(
      {
        purchase: purchaseData?.[0],
        newQuantity
      },
      { status: 201 }
    );
  } catch (error) {
    console.error('❌ Create purchase error:', error);
    const errorMsg = error instanceof Error ? error.message : JSON.stringify(error);
    return NextResponse.json({ error: `Failed to create purchase: ${errorMsg}` }, { status: 500 });
  }
}
