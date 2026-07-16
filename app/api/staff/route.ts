import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');
    const role = request.nextUrl.searchParams.get('role');

    let query = supabase
      .from('users')
      .select('id, name, email, role, outlet_id, is_active');

    // If outlet_id is provided, filter by outlet
    if (outlet_id) {
      query = query.eq('outlet_id', outlet_id).neq('role', 'owner');
    }

    // If role is provided, filter by role (used for getting only baristas)
    if (role) {
      query = query.eq('role', role);
    }

    const { data, error } = await query;

    if (error) throw error;

    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Staff error:', error);
    return NextResponse.json({ error: 'Failed to fetch staff' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const contentType = request.headers.get('content-type') || '';

    let name: string | undefined;
    let email: string | undefined;
    let role: string | undefined;
    let outlet_id: string | undefined;
    let phone: string | undefined;
    let avatar_url: string | undefined;

    if (contentType.includes('multipart/form-data')) {
      const form = await request.formData();
      name = form.get('name')?.toString();
      email = form.get('email')?.toString();
      role = form.get('role')?.toString();
      outlet_id = form.get('outlet_id')?.toString();
      phone = form.get('phone')?.toString();

      const file = form.get('photo');
      if (file && file instanceof File) {
        const allowedMimeTypes = new Set(['image/jpeg', 'image/jpg', 'image/png', 'image/webp']);
        if (!allowedMimeTypes.has(file.type)) {
          return NextResponse.json({ error: 'Invalid image type' }, { status: 400 });
        }

        const safeName = file.name
          .replace(/[^a-zA-Z0-9._-]/g, '-')
          .toLowerCase()
          .replace(/-+/g, '-');

        const fileName = `${Date.now()}-${safeName || 'avatar'}`;
        const path = `avatars/${fileName}`;
        const arrayBuffer = await file.arrayBuffer();
        const fileBytes = new Uint8Array(arrayBuffer);

        const { error: uploadError } = await supabase.storage
          .from('avatars')
          .upload(path, fileBytes, { contentType: file.type, upsert: true });

        if (uploadError) {
          console.error('Avatar upload failed:', uploadError);
          return NextResponse.json({ error: 'Failed to upload avatar' }, { status: 500 });
        }

        const { data: publicUrlData } = supabase.storage.from('avatars').getPublicUrl(path);
        avatar_url = publicUrlData.publicUrl;
      }
    } else {
      const body = await request.json();
      console.log('POST /api/staff body:', JSON.stringify(body));
      ({ name, email, role, outlet_id, phone } = body as any);
    }

    const missing: string[] = [];
    if (!name) missing.push('name');
    if (!email) missing.push('email');
    if (!role) missing.push('role');

    if (missing.length > 0) {
      const msg = `Missing required fields: ${missing.join(', ')}`;
      console.error('Create staff validation failed:', msg);
      return NextResponse.json({ error: msg }, { status: 400 });
    }

    // Allow creating staff without an assigned outlet (unassigned staff)
    const userData: Record<string, unknown> = { name, email, role, is_active: true };
    if (outlet_id) userData.outlet_id = outlet_id;
    if (phone) userData.phone = phone;
    if (avatar_url) userData.avatar_url = avatar_url;

    const { data, error } = await supabase
      .from('users')
      .insert([userData])
      .select();

    if (error) throw error;

    return NextResponse.json(data?.[0], { status: 201 });
  } catch (error) {
    console.error('Create staff error:', error);
    return NextResponse.json({ error: 'Failed to create staff' }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const contentType = request.headers.get('content-type') || '';

    let id: string | undefined;
    let name: string | undefined;
    let email: string | undefined;
    let role: string | undefined;
    let is_active: boolean | undefined;
    let avatar_url: string | undefined;

    if (contentType.includes('multipart/form-data')) {
      const form = await request.formData();
      id = form.get('id')?.toString();
      name = form.get('name')?.toString();
      email = form.get('email')?.toString();
      role = form.get('role')?.toString();
      const activeVal = form.get('is_active');
      if (activeVal != null) is_active = activeVal === 'true' || activeVal === '1';

      const file = form.get('photo');
      if (file && file instanceof File) {
        const allowedMimeTypes = new Set(['image/jpeg', 'image/jpg', 'image/png', 'image/webp']);
        if (!allowedMimeTypes.has(file.type)) {
          return NextResponse.json({ error: 'Invalid image type' }, { status: 400 });
        }

        const safeName = file.name
          .replace(/[^a-zA-Z0-9._-]/g, '-')
          .toLowerCase()
          .replace(/-+/g, '-');

        const fileName = `${Date.now()}-${safeName || 'avatar'}`;
        const path = `avatars/${fileName}`;
        const arrayBuffer = await file.arrayBuffer();
        const fileBytes = new Uint8Array(arrayBuffer);

        const { error: uploadError } = await supabase.storage
          .from('avatars')
          .upload(path, fileBytes, { contentType: file.type, upsert: true });

        if (uploadError) {
          console.error('Avatar upload failed:', uploadError);
          return NextResponse.json({ error: 'Failed to upload avatar' }, { status: 500 });
        }

        const { data: publicUrlData } = supabase.storage.from('avatars').getPublicUrl(path);
        avatar_url = publicUrlData.publicUrl;
      }
    } else {
      const body = await request.json();
      ({ id, name, email, role, is_active } = body as any);
    }

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const updateData: Record<string, unknown> = {};
    if (name !== undefined) updateData.name = name;
    if (email !== undefined) updateData.email = email;
    if (role !== undefined) updateData.role = role;
    if (is_active !== undefined) updateData.is_active = is_active;
    if (avatar_url) updateData.avatar_url = avatar_url;

    const { data, error } = await supabase
      .from('users')
      .update(updateData)
      .eq('id', id)
      .select();

    if (error) throw error;

    return NextResponse.json(data?.[0]);
  } catch (error) {
    console.error('Update staff error:', error);
    return NextResponse.json({ error: 'Failed to update staff' }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const { error } = await supabase
      .from('users')
      .update({ is_active: false })
      .eq('id', id);

    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Delete staff error:', error);
    return NextResponse.json({ error: 'Failed to delete staff' }, { status: 500 });
  }
}
