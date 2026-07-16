import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

const allowedMimeTypes = new Set(['image/jpeg', 'image/jpg', 'image/png', 'image/webp']);

export async function POST(request: NextRequest) {
  try {
    const formData = await request.formData();
    const productId = formData.get('productId')?.toString();
    const file = formData.get('file');

    if (!productId) {
      return NextResponse.json({ error: 'Missing productId' }, { status: 400 });
    }

    if (!file || typeof file === 'string' || !(file instanceof File)) {
      return NextResponse.json({ error: 'No image file provided' }, { status: 400 });
    }

    if (!allowedMimeTypes.has(file.type)) {
      return NextResponse.json(
        { error: 'Only JPG, PNG, or WebP images are allowed' },
        { status: 400 }
      );
    }

    const safeName = file.name
      .replace(/[^a-zA-Z0-9._-]/g, '-')
      .toLowerCase()
      .replace(/-+/g, '-');

    const fileName = `${Date.now()}-${safeName || 'product-image'}`;
    const path = `products/${productId}/${fileName}`;
    const arrayBuffer = await file.arrayBuffer();
    const fileBytes = new Uint8Array(arrayBuffer);

    const { error: uploadError } = await supabase.storage
      .from('avatars')
      .upload(path, fileBytes, {
        contentType: file.type,
        upsert: true,
      });

    if (uploadError) {
      console.error('Image upload failed:', uploadError);
      return NextResponse.json(
        {
          error: 'Failed to upload image to storage',
          details: uploadError.message,
        },
        { status: 500 }
      );
    }

    const { data: publicUrlData } = supabase.storage.from('avatars').getPublicUrl(path);
    const imageUrl = publicUrlData.publicUrl;

    const { error: updateError } = await supabase
      .from('products')
      .update({ image_url: imageUrl })
      .eq('id', productId);

    if (updateError) {
      console.error('Product image_url update failed:', updateError);
      return NextResponse.json(
        { error: 'Image uploaded but could not save URL to product', details: updateError.message },
        { status: 500 }
      );
    }

    return NextResponse.json({ success: true, imageUrl, path });
  } catch (error) {
    console.error('Upload image route error:', error);
    return NextResponse.json(
      { error: 'Failed to upload image', details: String(error) },
      { status: 500 }
    );
  }
}
