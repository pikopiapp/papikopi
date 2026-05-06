import { createClient } from '@supabase/supabase-js';
import { NextResponse } from 'next/server';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function POST() {
  try {
    // Get all showcase products
    const { data: products } = await supabase
      .from('showcase_products')
      .select('id');

    if (!products || products.length === 0) {
      return NextResponse.json({
        success: true,
        message: 'No products to reset',
      });
    }

    // Reset each product's allocated_quantity to 0
    for (const product of products) {
      await supabase
        .from('showcase_products')
        .update({ allocated_quantity: 0 })
        .eq('id', product.id);
    }

    // Delete all allocations
    const { error: deleteError } = await supabase
      .from('showcase_allocations')
      .delete()
      .neq('id', 'null');

    if (deleteError) {
      console.log('Delete warning:', deleteError.message);
    }

    return NextResponse.json({
      success: true,
      message: 'Showcase data reset successfully - all allocations cleared and quantities reset to 0',
      data: {
        products_reset: products.length,
      },
    });
  } catch (error) {
    console.error('Reset showcase error:', error);
    return NextResponse.json(
      { success: false, message: 'Internal server error' },
      { status: 500 }
    );
  }
}
