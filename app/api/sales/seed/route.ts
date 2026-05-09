import { NextResponse } from 'next/server';
import { supabase } from '@/lib/showcase-utils';

export async function POST() {
  try {
    console.log('=== Seeding Sales Data ===');

    // Get outlets with Papikopi in name
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id, name')
      .ilike('name', '%Papi%')
      .limit(3);

    if (outletsError || !outlets || outlets.length === 0) {
      console.error('No outlets found:', outletsError);
      return NextResponse.json(
        { message: 'No outlets found', count: 0 },
        { status: 200 }
      );
    }

    // Get products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('id, name, price, hpp')
      .limit(5);

    if (productsError || !products || products.length === 0) {
      console.error('No products found:', productsError);
      return NextResponse.json(
        { message: 'No products found', count: 0 },
        { status: 200 }
      );
    }

    // Get baristas
    const { data: baristas, error: baristasError } = await supabase
      .from('users')
      .select('id, name, outlet_id')
      .eq('role', 'barista')
      .limit(10);

    if (baristasError || !baristas || baristas.length === 0) {
      console.error('No baristas found:', baristasError);
      return NextResponse.json(
        { message: 'No baristas found', count: 0 },
        { status: 200 }
      );
    }

    let insertCount = 0;

    // Insert 3 sales transactions
    const salesData = [
      {
        outlet_id: outlets[0].id,
        barista_id: baristas.find(b => b.outlet_id === outlets[0].id)?.id || baristas[0].id,
        total_amount: 16000,
        hpp_total: 8000,
        bonus_amount: 1600,
        profit: 6400,
        payment_method: 'qris' as const,
        created_at: new Date().toISOString(),
      },
      {
        outlet_id: outlets[1].id,
        barista_id: baristas.find(b => b.outlet_id === outlets[1].id)?.id || baristas[1].id,
        total_amount: 32000,
        hpp_total: 16000,
        bonus_amount: 3200,
        profit: 12800,
        payment_method: 'cash' as const,
        created_at: new Date(Date.now() - 2 * 60 * 60 * 1000).toISOString(),
      },
      {
        outlet_id: outlets[2].id,
        barista_id: baristas.find(b => b.outlet_id === outlets[2].id)?.id || baristas[2].id,
        total_amount: 56000,
        hpp_total: 28000,
        bonus_amount: 5600,
        profit: 22400,
        payment_method: 'qris' as const,
        created_at: new Date(Date.now() - 24 * 60 * 60 * 1000).toISOString(),
      },
    ];

    // Insert each sale
    for (const saleData of salesData) {
      const { data: insertedSale, error: insertError } = await supabase
        .from('sales')
        .insert([saleData])
        .select('id');

      if (insertError) {
        console.error('Error inserting sale:', insertError);
        continue;
      }

      if (insertedSale && insertedSale.length > 0) {
        const saleId = insertedSale[0].id;

        // Insert 2 sale items for variety
        const product1 = products[0];
        const product2 = products[products.length > 1 ? 1 : 0];

        await supabase.from('sale_items').insert([
          {
            sale_id: saleId,
            product_id: product1.id,
            quantity: 1,
            price: product1.price,
            hpp: product1.hpp,
          },
          {
            sale_id: saleId,
            product_id: product2.id,
            quantity: 1,
            price: product2.price,
            hpp: product2.hpp,
          },
        ]);

        insertCount++;
        console.log(`✅ Inserted sale ${insertCount} with items`);
      }
    }

    console.log(`✅ Total inserted: ${insertCount} sales transactions`);

    return NextResponse.json(
      { message: 'Sales data seeded successfully', count: insertCount },
      { status: 200 }
    );
  } catch (error) {
    console.error('Seed error:', error);
    return NextResponse.json(
      { message: 'Error seeding data', error: error instanceof Error ? error.message : 'Unknown error', count: 0 },
      { status: 200 }
    );
  }
}
