import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ outletId: string }> }
) {
  try {
    const { outletId } = await params;

    if (!outletId) {
      return NextResponse.json({ error: 'outletId required' }, { status: 400 });
    }

    // Get all users with barista role assigned to this outlet
    const { data, error } = await supabase
      .from('users')
      .select('id, name, email, role')
      .eq('outlet_id', outletId)
      .eq('role', 'barista')
      .order('name', { ascending: true });

    if (error) {
      console.error('Get baristas error:', error);
      return NextResponse.json({ error: error.message }, { status: 400 });
    }

    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Get baristas error:', error);
    return NextResponse.json({ error: 'Failed to fetch baristas' }, { status: 500 });
  }
}

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ outletId: string }> }
) {
  try {
    const { outletId } = await params;
    const body = await request.json();
    const { barista_id } = body;

    if (!outletId || !barista_id) {
      return NextResponse.json({ error: 'outletId and barista_id required' }, { status: 400 });
    }

    // Check if barista is already assigned to ANY outlet
    const { data: existingAssignment, error: checkError } = await supabase
      .from('users')
      .select('id, outlet_id')
      .eq('id', barista_id)
      .eq('role', 'barista')
      .single();

    if (checkError) {
      console.error('Check barista assignment error:', checkError);
      return NextResponse.json({ error: 'Barista not found' }, { status: 404 });
    }

    if (existingAssignment?.outlet_id && existingAssignment.outlet_id !== outletId) {
      return NextResponse.json({ error: 'Barista is already assigned to another outlet' }, { status: 400 });
    }

    // Check if outlet already has a barista assigned
    const { data: outletBaristas, error: outletCheckError } = await supabase
      .from('users')
      .select('id')
      .eq('outlet_id', outletId)
      .eq('role', 'barista');

    if (outletCheckError) {
      console.error('Check outlet barista error:', outletCheckError);
      return NextResponse.json({ error: 'Failed to check outlet baristas' }, { status: 400 });
    }

    // If outlet already has a barista and it's different, reject
    if (outletBaristas && outletBaristas.length > 0 && outletBaristas[0].id !== barista_id) {
      return NextResponse.json({ error: 'This outlet already has a barista assigned' }, { status: 400 });
    }

    // Update user to assign to this outlet
    const { data, error } = await supabase
      .from('users')
      .update({ outlet_id: outletId })
      .eq('id', barista_id)
      .eq('role', 'barista')
      .select();

    if (error) {
      console.error('Assign barista error:', error);
      return NextResponse.json({ error: error.message }, { status: 400 });
    }

    if (!data || data.length === 0) {
      return NextResponse.json({ error: 'Barista not found or cannot be assigned' }, { status: 404 });
    }

    return NextResponse.json(data[0], { status: 201 });
  } catch (error) {
    console.error('Assign barista error:', error);
    return NextResponse.json({ error: 'Failed to assign barista' }, { status: 500 });
  }
}
