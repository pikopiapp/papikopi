import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET() {
  try {
    const { data: ingredients, error } = await supabase
      .from('ingredients')
      .select('*')
      .order('name');

    if (error) throw error;

    return NextResponse.json(ingredients || []);
  } catch (error) {
    console.error('GET ingredients error:', error);
    return NextResponse.json({ error: 'Failed to fetch ingredients' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { name, unit, cost } = body;

    if (!name || !unit || cost === undefined) {
      return NextResponse.json(
        { error: 'Missing required fields: name, unit, cost' },
        { status: 400 }
      );
    }

    const { data: ingredient, error } = await supabase
      .from('ingredients')
      .insert({
        name,
        unit,
        cost: parseFloat(cost),
      })
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(ingredient, { status: 201 });
  } catch (error) {
    console.error('POST ingredient error:', error);
    return NextResponse.json({ error: 'Failed to create ingredient' }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, unit, cost } = body;

    if (!id) {
      return NextResponse.json({ error: 'Missing ingredient id' }, { status: 400 });
    }

    const updateData: Record<string, string | number> = {};
    if (name !== undefined) updateData.name = name;
    if (unit !== undefined) updateData.unit = unit;
    if (cost !== undefined) updateData.cost = parseFloat(cost);

    const { data: ingredient, error } = await supabase
      .from('ingredients')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(ingredient);
  } catch (error) {
    console.error('PUT ingredient error:', error);
    return NextResponse.json({ error: 'Failed to update ingredient' }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const id = searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'Missing ingredient id' }, { status: 400 });
    }

    const { error } = await supabase
      .from('ingredients')
      .delete()
      .eq('id', id);

    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('DELETE ingredient error:', error);
    return NextResponse.json({ error: 'Failed to delete ingredient' }, { status: 500 });
  }
}
