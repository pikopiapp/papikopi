import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');

    // If outlet_id is provided, get single outlet
    if (outlet_id) {
      const { data, error } = await supabase
        .from('outlets')
        .select('*')
        .eq('id', outlet_id)
        .single();

      if (error) throw error;
      return NextResponse.json(data);
    }

    // Otherwise, get all outlets
    const { data, error } = await supabase
      .from('outlets')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) throw error;

    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Outlet error:', error);
    return NextResponse.json({ error: 'Failed to fetch outlet' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { name, type, address } = body;

    if (!name || !type) {
      return NextResponse.json({ error: 'name and type required' }, { status: 400 });
    }

    // Normalize/validate outlet type to avoid DB check-constraint failures
    const allowedTypes = ['e-trike', 'coffee_stand'];
    const legacyMap: Record<string, string> = {
      gerobak: 'e-trike',
      "becak_listrik": 'e-trike',
      toko: 'coffee_stand',
      warung: 'coffee_stand',
      cafe: 'coffee_stand',
      retail: 'coffee_stand',
    };

    function normalizeType(input: unknown) {
      if (typeof input === 'string') {
        const v = input.trim().toLowerCase();
        if (allowedTypes.includes(v)) return v;
        if (legacyMap[v]) return legacyMap[v];
        return null;
      }
      if (typeof input === 'number') {
        // legacy numeric codes mapping (defensive)
        const numMap: Record<number, string> = {
          1: 'e-trike',
          2: 'coffee_stand',
          3: 'e-trike',
          4: 'coffee_stand',
        };
        return numMap[input] ?? null;
      }
      return null;
    }

    const normalizedType = normalizeType(type);
    if (!normalizedType) {
      console.error('Invalid outlet type received:', type);
      return NextResponse.json({ error: `Invalid outlet type. Allowed: ${allowedTypes.join(', ')}`, details: { receivedType: type } }, { status: 400 });
    }

    // Attempt insert; if DB still uses legacy check values, retry with legacy mapping
    async function tryInsert(typeValue: string) {
      return supabase
        .from('outlets')
        .insert([{ name, type: typeValue, address: address || null }])
        .select()
        .single();
    }

    let insertResult = await tryInsert(normalizedType);

    if (insertResult.error) {
      console.error('Create outlet error details:', insertResult.error);
      // If it's a check-constraint on type, attempt legacy fallback mapping and retry once
      const err = insertResult.error as any;
      if (err?.code === '23514' || (err?.message && err.message.includes('check constraint "outlets_type_check"'))) {
        const legacyFallback: Record<string, string> = {
          'e-trike': 'gerobak',
          'coffee_stand': 'toko',
        };
        const fallbackType = legacyFallback[normalizedType];
        if (fallbackType) {
          console.warn('Retrying insert with legacy type value:', fallbackType);
          insertResult = await tryInsert(fallbackType);
        }
      }
    }

    if (insertResult.error) {
      console.error('Create outlet error details:', insertResult.error);
      throw insertResult.error;
    }

    const data = insertResult.data;

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Create outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to create outlet: ${errorMsg}` }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, type, address } = body;
    const rawType = type; // preserve original input for fallback attempts

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    // Normalize/validate outlet type on update as well
    const allowedTypes = ['e-trike', 'coffee_stand'];
    const legacyMap: Record<string, string> = {
      gerobak: 'e-trike',
      "becak_listrik": 'e-trike',
      toko: 'coffee_stand',
      warung: 'coffee_stand',
      cafe: 'coffee_stand',
      retail: 'coffee_stand',
    };

    function normalizeType(input: unknown) {
      if (typeof input === 'string') {
        const v = input.trim().toLowerCase();
        if (allowedTypes.includes(v)) return v;
        if (legacyMap[v]) return legacyMap[v];
        return null;
      }
      if (typeof input === 'number') {
        const numMap: Record<number, string> = {
          1: 'e-trike',
          2: 'coffee_stand',
          3: 'e-trike',
          4: 'coffee_stand',
        };
        return numMap[input] ?? null;
      }
      return null;
    }

    const updateData: Record<string, string | null> = {};
    if (name) updateData.name = name;
    if (type) {
      const normalized = normalizeType(type);
      if (!normalized) {
        console.error('Invalid outlet type received (update):', type);
        return NextResponse.json({ error: `Invalid outlet type. Allowed: ${allowedTypes.join(', ')}`, details: { receivedType: type } }, { status: 400 });
      }
      updateData.type = normalized;
    }
    if (address !== undefined) updateData.address = address || null;

    // Attempt update; if DB still enforces legacy type values, retry with fallback
    async function tryUpdate(dataToUpdate: Record<string, string | null>) {
      return supabase.from('outlets').update(dataToUpdate).eq('id', id).select().single();
    }

    let updateResult = await tryUpdate(updateData);
    if (updateResult.error) {
      console.error('Update outlet error details:', updateResult.error);
      const err = updateResult.error as any;
      if (err?.code === '23514' || (err?.message && err.message.includes('check constraint "outlets_type_check"'))) {
        const legacyFallback: Record<string, string> = {
          'e-trike': 'gerobak',
          'coffee_stand': 'toko',
        };

        // Determine fallback candidate: prefer normalized update value, else try original raw input
        let fallbackType: string | undefined;
        if (updateData.type) {
          fallbackType = legacyFallback[updateData.type as string];
        }

        if (!fallbackType && rawType !== undefined) {
          // try to normalize the raw input and map it
          const normalizedRaw = (function (input: unknown) {
            if (typeof input === 'string') {
              const v = input.trim().toLowerCase();
              if (allowedTypes.includes(v)) return v;
              if (legacyMap[v]) return legacyMap[v];
              return null;
            }
            if (typeof input === 'number') {
              const numMap: Record<number, string> = {
                1: 'e-trike',
                2: 'coffee_stand',
                3: 'e-trike',
                4: 'coffee_stand',
              };
              return numMap[input] ?? null;
            }
            return null;
          })(rawType as unknown);

          if (normalizedRaw) {
            fallbackType = legacyFallback[normalizedRaw];
          }
        }

        if (fallbackType) {
          console.warn('Retrying update with legacy type value:', fallbackType);
          const dataToRetry = { ...updateData, type: fallbackType };
          updateResult = await tryUpdate(dataToRetry);
        }
      }
    }

    if (updateResult.error) {
      console.error('Update outlet error details:', updateResult.error);
      throw updateResult.error;
    }

    const data = updateResult.data;

    return NextResponse.json(data);
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Update outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to update outlet: ${errorMsg}` }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const { error } = await supabase
      .from('outlets')
      .delete()
      .eq('id', id);

    if (error) {
      console.error('Delete outlet error details:', error);
      throw error;
    }

    return NextResponse.json({ success: true });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Delete outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to delete outlet: ${errorMsg}` }, { status: 500 });
  }
}
