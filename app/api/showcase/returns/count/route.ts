import { NextResponse } from 'next/server';
import { supabase } from '@/lib/showcase-utils';

export async function GET() {
  try {
    console.log('=== Fetching Return Counts ===');
    
    // Get all pending returns
    const { data: returns, error } = await supabase
      .from('product_returns')
      .select('product_id')
      .eq('resolution_status', 'pending');

    if (error) {
      console.error('Supabase error:', error);
      return NextResponse.json({}, { status: 200 });
    }

    console.log('Returns found:', returns?.length || 0);

    // Count returns by product_id
    const returnCounts: Record<string, number> = {};
    
    if (returns && Array.isArray(returns)) {
      returns.forEach((ret) => {
        if (ret.product_id) {
          returnCounts[ret.product_id] = (returnCounts[ret.product_id] || 0) + 1;
        }
      });
    }

    console.log('Return counts by product:', returnCounts);
    return NextResponse.json(returnCounts, { status: 200 });
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    console.error('API Error:', errorMessage);
    return NextResponse.json({}, { status: 200 });
  }
}





