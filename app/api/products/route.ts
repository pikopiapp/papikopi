import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET() {
  try {
    // Get all products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('*')
      .order('name');

    if (productsError) throw productsError;

    // Get unique category IDs
    const categoryIds = [...new Set(products?.map((p: any) => p.category_id) || [])];

    // Get categories
    const { data: categories } = await supabase
      .from('categories')
      .select('id, name')
      .in('id', categoryIds);

    const categoryMap = new Map(categories?.map((c: any) => [c.id, c]) || []);

    // Get product ingredients separately (without join - we'll join manually)
    const { data: allIngredients, error: ingredientsError } = await supabase
      .from('product_ingredients')
      .select('product_id, ingredient_id, quantity');

    if (ingredientsError) {
      console.error('❌ Error fetching product_ingredients:', ingredientsError);
    }

    // Get all ingredients for lookup
    const { data: allIngredientsData } = await supabase
      .from('ingredients')
      .select('id, name, unit, cost');

    const ingredientLookup = new Map(allIngredientsData?.map((ing: any) => [ing.id, ing]) || []);

    const ingredientsMap = new Map();
    (allIngredients || []).forEach((pi: any) => {
      if (!ingredientsMap.has(pi.product_id)) {
        ingredientsMap.set(pi.product_id, []);
      }
      const ingredient = ingredientLookup.get(pi.ingredient_id);
      ingredientsMap.get(pi.product_id).push({
        product_id: pi.product_id,
        ingredient_id: pi.ingredient_id,
        quantity: pi.quantity,
        ingredient: ingredient
      });
    });

    // Calculate HPP for each product and add category
    const productsWithHpp = (products || []).map((product: Record<string, unknown>) => {
      const productIngredients = ingredientsMap.get(product.id as string) || [];
      const hpp = productIngredients.reduce((total: number, pi: any) => {
        return total + (pi.ingredient?.cost || 0) * (pi.quantity || 1);
      }, 0);

      const price = product.price as number || 0;
      const margin = price ? ((price - hpp) / price * 100).toFixed(2) : 0;
      const category = categoryMap.get(product.category_id as string);

      return {
        ...product,
        category: category || { id: product.category_id, name: 'Unknown' },
        product_ingredients: productIngredients,
        hpp: hpp.toFixed(2),
        margin: `${margin}%`,
      };
    });

    return NextResponse.json(productsWithHpp);
  } catch (error) {
    console.error('GET products error:', error);
    return NextResponse.json({ error: 'Failed to fetch products' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    let { name, category_id, price, ingredients } = body;

    if (!name || !price) {
      return NextResponse.json(
        { error: 'Missing required fields: name, price' },
        { status: 400 }
      );
    }

    // Handle category_id - if it's a number, convert to first category or null
    if (category_id && typeof category_id === 'number') {
      console.log('⚠️ category_id is number:', category_id, '- fetching first category');
      const { data: categories } = await supabase
        .from('categories')
        .select('id')
        .limit(1);
      category_id = categories?.[0]?.id || null;
    }

    // Calculate HPP based on ingredients
    let hpp = 0;
    if (ingredients && Array.isArray(ingredients) && ingredients.length > 0) {
      for (const ing of ingredients) {
        const { data: ingredient } = await supabase
          .from('ingredients')
          .select('cost')
          .eq('id', ing.ingredient_id)
          .single();
        if (ingredient) {
          hpp += (ingredient.cost || 0) * (parseFloat(ing.quantity as string) || 1);
        }
      }
    }

    // Insert product with calculated hpp
    const { data: product, error: productError } = await supabase
      .from('products')
      .insert({
        name,
        category_id: category_id || null,
        price: parseFloat(price),
        hpp: hpp,
      })
      .select()
      .single();

    if (productError) throw productError;

    // Insert product ingredients if provided
    if (ingredients && Array.isArray(ingredients) && ingredients.length > 0) {
      const ingredientsData = ingredients.map((ing: Record<string, unknown>) => ({
        product_id: product.id,
        ingredient_id: ing.ingredient_id,
        quantity: parseFloat(ing.quantity as string) || 1,
      }));

      const { error: ingredientsError } = await supabase
        .from('product_ingredients')
        .insert(ingredientsData);

      if (ingredientsError) throw ingredientsError;
    }

    return NextResponse.json(product, { status: 201 });
  } catch (error) {
    console.error('POST product error:', error);
    return NextResponse.json({ error: 'Failed to create product' }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, category_id, price, ingredients } = body;

    if (!id) {
      return NextResponse.json({ error: 'Missing product id' }, { status: 400 });
    }

    const updateData: Record<string, unknown> = {};
    if (name !== undefined) updateData.name = name;
    if (category_id !== undefined) updateData.category_id = category_id;
    if (price !== undefined) updateData.price = parseFloat(price);

    // Calculate new HPP if ingredients are being updated
    if (ingredients !== undefined && Array.isArray(ingredients)) {
      let hpp = 0;
      for (const ing of ingredients) {
        const { data: ingredient } = await supabase
          .from('ingredients')
          .select('cost')
          .eq('id', ing.ingredient_id)
          .single();
        if (ingredient) {
          hpp += (ingredient.cost || 0) * (parseFloat(ing.quantity as string) || 1);
        }
      }
      updateData.hpp = hpp;
    }

    const { data: product, error: productError } = await supabase
      .from('products')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (productError) throw productError;

    // Update ingredients if provided
    if (ingredients !== undefined) {
      // Delete existing ingredients
      const { error: deleteError } = await supabase
        .from('product_ingredients')
        .delete()
        .eq('product_id', id);

      if (deleteError) {
        console.error('❌ Error deleting product_ingredients:', deleteError);
        throw deleteError;
      }

      console.log(`✅ Deleted existing ingredients for product: ${id}`);

      // Insert new ingredients
      if (Array.isArray(ingredients) && ingredients.length > 0) {
        const ingredientsData = ingredients.map((ing: Record<string, unknown>) => ({
          product_id: id,
          ingredient_id: ing.ingredient_id,
          quantity: parseFloat(ing.quantity as string) || 1,
        }));

        console.log(`📝 Inserting ${ingredientsData.length} ingredients:`, ingredientsData);

        const { error: insertError } = await supabase
          .from('product_ingredients')
          .insert(ingredientsData);

        if (insertError) {
          console.error('❌ Error inserting product_ingredients:', insertError);
          throw insertError;
        }

        console.log(`✅ Inserted ${ingredientsData.length} ingredients for product: ${id}`);
      }
    }

    return NextResponse.json(product);
  } catch (error) {
    console.error('PUT product error:', error);
    return NextResponse.json({ error: 'Failed to update product' }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const id = searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'Missing product id' }, { status: 400 });
    }

    // Delete product ingredients first (cascade delete)
    const { error: ingredientsError } = await supabase
      .from('product_ingredients')
      .delete()
      .eq('product_id', id);

    if (ingredientsError) throw ingredientsError;

    // Delete product
    const { error } = await supabase
      .from('products')
      .delete()
      .eq('id', id);

    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('DELETE product error:', error);
    return NextResponse.json({ error: 'Failed to delete product' }, { status: 500 });
  }
}
