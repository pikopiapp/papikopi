import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest, { params }: { params: Promise<{ outletId: string }> }) {
  try {
    const { outletId } = await params;
    
// Get products assigned to this outlet via warehouse batches
    // Only products that have been assigned (status='assigned') from /dashboard/warehouse
    const { data: assignedBatches, error: batchesError } = await supabase
      .from('product_batches')
      .select('id, product_id, outlet_id, status, quantity')
      .eq('outlet_id', outletId)
      .eq('status', 'assigned')
      .gt('quantity', 0);

    if (batchesError) throw batchesError;

    // Calculate total quantity per product
    const productQuantityMap = new Map<string, number>();
    const productBatchIds: string[] = [];
    (assignedBatches || []).forEach(batch => {
      const currentQty = productQuantityMap.get(batch.product_id) || 0;
      productQuantityMap.set(batch.product_id, currentQty + batch.quantity);
      productBatchIds.push(batch.id);
    });

    // Get unique product IDs that are assigned to this outlet
    const assignedProductIds = [...new Set(
      (assignedBatches || []).map(batch => batch.product_id)
    )];

    // If no products assigned, return empty list
    if (assignedProductIds.length === 0) {
      return NextResponse.json({
        products: [],
        outlet_ingredients: [],
      });
    }

    // Get only products that are assigned to this outlet
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('*, category:category_id(id, name)')
      .eq('is_active', true)
      .in('id', assignedProductIds)
      .order('name');

    if (productsError) throw productsError;

    // Get outlet stock (available ingredients at this outlet)
    const { data: outletStock, error: stockError } = await supabase
      .from('outlet_stock')
      .select('*, ingredients(id, name, unit, cost)')
      .eq('outlet_id', outletId)
      .gt('quantity', 0);

    if (stockError) throw stockError;

    // Get product ingredients to check if product can be made
    const { data: productIngredients } = await supabase
      .from('product_ingredients')
      .select('product_id, ingredient_id, quantity');

    // Create stock map for quick lookup
    const stockMap = new Map();
    (outletStock || []).forEach((stock: any) => {
      stockMap.set(stock.ingredient_id, stock.quantity);
    });

    // Determine products availability and stock info
    const productsWithStock = (products || []).map((product: any) => {
      const ingredients = (productIngredients || []).filter(
        (pi: any) => pi.product_id === product.id
      );

      // Check if all required ingredients are available
      let canMake = true;
      const ingredientDetails = ingredients.map((ing: any) => {
        const availableStock = stockMap.get(ing.ingredient_id) || 0;
        if (availableStock < ing.quantity) {
          canMake = false;
        }
        return {
          ingredient_id: ing.ingredient_id,
          required: ing.quantity,
          available: availableStock,
        };
      });

return {
        ...product,
        available_quantity: productQuantityMap.get(product.id) || 0,
        can_make: canMake,
        ingredient_details: ingredientDetails,
      };
    });

    // Return both products and outlet stock ingredients
    return NextResponse.json({
      products: productsWithStock,
      outlet_ingredients: outletStock || [],
    });
  } catch (error) {
    console.error('Get outlet products error:', error);
    return NextResponse.json({ error: 'Failed to fetch products' }, { status: 500 });
  }
}
