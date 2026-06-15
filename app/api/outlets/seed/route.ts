import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const outletsData = [
  { name: 'E-trike Papi 001', type: 'e-trike', address: 'Jalan Suropati, Bandung' },
  { name: 'E-trike Papi 002', type: 'e-trike', address: 'Jalan Trunojoyo, Bandung' },
  { name: 'E-trike Papi 003', type: 'e-trike', address: 'Jalan Dipati Ukur, Bandung' },
  { name: 'E-trike Papi 004', type: 'e-trike', address: 'Jalan Stakusuma, Bandung' },
  { name: 'E-trike Papi 005', type: 'e-trike', address: 'Jalan Braga, Bandung' },
  { name: 'E-trike Papi 006', type: 'e-trike', address: 'Jalan Cihampelas, Bandung' },
  { name: 'E-trike Papi 007', type: 'e-trike', address: 'Jalan Setiabudhi, Bandung' },
  { name: 'E-trike Papi 008', type: 'e-trike', address: 'Jalan Ir. H. Juanda, Bandung' },
  { name: 'E-trike Papi 009', type: 'e-trike', address: 'Jalan Gatot Subroto, Bandung' },
  { name: 'E-trike Papi 010', type: 'e-trike', address: 'Jalan Pasteur, Bandung' },
  { name: 'E-trike Papi 011', type: 'e-trike', address: 'Jalan Tangkuban Perahu, Bandung' },
  { name: 'E-trike Papi 012', type: 'e-trike', address: 'Jalan Riau, Bandung' },
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
