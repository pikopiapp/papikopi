import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const outletsData = [
  { name: 'gerobak Papi 001', type: 'gerobak', address: 'Jalan Suropati, Bandung' },
  { name: 'gerobak Papi 002', type: 'gerobak', address: 'Jalan Trunojoyo, Bandung' },
  { name: 'gerobak Papi 003', type: 'gerobak', address: 'Jalan Dipati Ukur, Bandung' },
  { name: 'gerobak Papi 004', type: 'gerobak', address: 'Jalan Stakusuma, Bandung' },
  { name: 'gerobak Papi 005', type: 'gerobak', address: 'Jalan Braga, Bandung' },
  { name: 'gerobak Papi 006', type: 'gerobak', address: 'Jalan Cihampelas, Bandung' },
  { name: 'gerobak Papi 007', type: 'gerobak', address: 'Jalan Setiabudhi, Bandung' },
  { name: 'gerobak Papi 008', type: 'gerobak', address: 'Jalan Ir. H. Juanda, Bandung' },
  { name: 'gerobak Papi 009', type: 'gerobak', address: 'Jalan Gatot Subroto, Bandung' },
  { name: 'gerobak Papi 010', type: 'gerobak', address: 'Jalan Pasteur, Bandung' },
  { name: 'gerobak Papi 011', type: 'gerobak', address: 'Jalan Tangkuban Perahu, Bandung' },
  { name: 'gerobak Papi 012', type: 'gerobak', address: 'Jalan Riau, Bandung' },
];

export async function GET() {
  return handleSeed();
}

export async function POST() {
  return handleSeed();
}

async function handleSeed() {
  try {
    // First, delete all existing outlets
    const { error: deleteError } = await supabase
      .from('outlets')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteError) {
      console.warn('Delete warning:', deleteError.message);
    }

    // Insert all 12 outlets
    const { data, error } = await supabase
      .from('outlets')
      .insert(outletsData)
      .select();

    if (error) {
      console.error('Supabase error:', error);
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json({
      message: `Successfully created ${data?.length || 0} outlets`,
      outlets: data,
    });
  } catch (error) {
    console.error('Error seeding outlets:', error);
    return Response.json(
      { error: 'Failed to seed outlets' },
      { status: 500 }
    );
  }
}
