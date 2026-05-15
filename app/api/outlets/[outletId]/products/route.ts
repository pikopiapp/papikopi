import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest, { params }: { params: Promise<{ outletId: string }> }) {
  try {
    const { outletId } = await params;
    
    // Step 1: Get showcase allocations for this outlet (tombola products)
    const { data: allocations, error: allocationsError } = await supabase
      .from('showcase_allocations')
      .select('showcase_product_id, quantity')
      .eq('outlet_id', outletId)
      .gt('quantity', 0);

    if (allocationsError) throw allocationsError;

    if (!allocations || allocations.length === 0) {
      return NextResponse.json({
        products: [],
        outlet_ingredients: [],
      });
    }

    // Step 2: Get showcase product IDs
    const showcaseProductIds = allocations.map(a => a.showcase_product_id);
    
    // Step 3: Get showcase_products to get product_id
    const { data: showcaseProducts, error: showcaseError } = await supabase
      .from('showcase_products')
      .select('id, product_id')
      .in('id', showcaseProductIds);

    if (showcaseError) throw showcaseError;

    // Step 4: Build product ID map and quantity map
    const showcaseProductMap = new Map<string, string>(); // showcase_product_id -> product_id
    const productIds: string[] = [];
    (showcaseProducts || []).forEach((sp: any) => {
      showcaseProductMap.set(sp.id, sp.product_id);
      productIds.push(sp.product_id);
    });

    // Calculate total quantity per PRODUCT (not showcase product)
    const productQuantityMap = new Map<string, number>();
    (allocations || []).forEach((allocation: any) => {
      const productId = showcaseProductMap.get(allocation.showcase_product_id);
      if (productId) {
        const currentQty = productQuantityMap.get(productId) || 0;
        productQuantityMap.set(productId, currentQty + allocation.quantity);
      }
    });

    // Get unique product IDs that are allocated to this outlet
    const assignedProductIds = productIds;

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
    const productsWithStock = (products || [])
      .map((product: any) => {
        const ingredients = (productIngredients || []).filter(
          (pi: any) => pi.product_id === product.id
        );

        // Check if all required ingredients are available
        let canMake = true;
        (ingredients || []).forEach((ing: any) => {
          const availableStock = stockMap.get(ing.ingredient_id) || 0;
          if (availableStock < ing.quantity) {
            canMake = false;
          }
        });

        return {
          ...product,
          available_quantity: productQuantityMap.get(product.id) || 0,
          can_make: canMake,
        };
      })
      // Filter out of stock items (only show items with quantity > 0)
      .filter((product: any) => product.available_quantity > 0)
      // Sort by available_quantity highest first
      .sort((a: any, b: any) => b.available_quantity - a.available_quantity);

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
