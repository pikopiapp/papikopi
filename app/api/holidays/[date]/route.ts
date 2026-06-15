import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

export async function DELETE(request: NextRequest, { params }: { params: { date: string } | Promise<{ date: string }> }) {
  try {
    const { date } = await params as { date: string };
    if (!date) return NextResponse.json({ success: false, error: 'Missing date' }, { status: 400 });

    const { data, error } = await supabase
      .from('custom_holidays')
      .delete()
      .eq('date', date)
      .select('id, date')
      .limit(1);

    if (error) throw error;
    return NextResponse.json({ success: true, data });
  } catch (err) {
    console.error('Delete custom holiday error:', err);
    // If the table does not exist, return an explanatory error so the migration can be applied.
    // @ts-expect-error
    if (err && err.code === 'PGRST205') {
      return NextResponse.json({ success: false, error: "Database table 'custom_holidays' not found. Run the migration to create it." }, { status: 500 });
    }
    return NextResponse.json({ success: false, error: 'Failed to delete custom holiday' }, { status: 500 });
  }
}
