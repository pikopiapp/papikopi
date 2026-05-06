import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ outletId: string; baristaId: string }> }
) {
  try {
    const { outletId, baristaId } = await params;

    if (!outletId || !baristaId) {
      return NextResponse.json({ error: 'outletId and baristaId required' }, { status: 400 });
    }

    // Update user to remove outlet assignment
    const { data, error } = await supabase
      .from('users')
      .update({ outlet_id: null })
      .eq('id', baristaId)
      .eq('outlet_id', outletId)
      .select();

    if (error) {
      console.error('Remove barista error:', error);
      return NextResponse.json({ error: error.message }, { status: 400 });
    }

    if (!data || data.length === 0) {
      return NextResponse.json({ error: 'Barista not found or not assigned to this outlet' }, { status: 404 });
    }

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Remove barista error:', error);
    return NextResponse.json({ error: 'Failed to remove barista' }, { status: 500 });
  }
}
