import { createClient } from '@supabase/supabase-js';
import bcrypt from 'bcrypt';

// For demo/seeding only - use anon key with RLS disabled temporarily
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const DEFAULT_PASSWORD = 'PapiKopiOutlet!234';

const usersData = [
  {
    name: 'Romi Ramdani',
    email: 'papikopi.ind@gmail.com',
    role: 'manager',
  },
  {
    name: 'Ilham Fellani',
    email: 'joshilham@gmail.com',
    role: 'barista',
  },
  {
    name: 'Zalita',
    email: 'zallitaputri1@gmail.com',
    role: 'investor',
  },
  {
    name: 'Sutarno',
    email: 'taredoank46@gmail.com',
    role: 'barista',
  },
  {
    name: 'Bintang Dwi',
    email: 'dwidodo2401@gmail.com',
    role: 'barista',
  },
  {
    name: 'Muhammad Haikal Irfansyah',
    email: 'HaikalIrfansyah4@gmail.com',
    role: 'barista',
  },
  {
    name: 'Akrom Halimi',
    email: 'Xlakrom@gmail.com',
    role: 'barista',
  },
  {
    name: 'Elang Malikuzaman',
    email: 'elang@investor.com',
    role: 'investor',
  },
  {
    name: 'Naila Nadhira',
    email: 'nadhiranaila1903@gmail.com',
    role: 'investor',
  },
  {
    name: 'Fauzan Syafiq',
    email: 'fauzansyafiq241@gmail.com',
    role: 'barista',
  },
  {
    name: 'Ali Imran',
    email: 'urank.awak.juo.nyo@gmail.com',
    role: 'barista',
  },
  {
    name: 'Rizal Tamami',
    email: 'rizaltamam3393@gmail.com',
    role: 'barista',
  },
  {
    name: 'Agung Prawira Lesmana',
    email: 'papikopi.2201@gmail.com',
    role: 'barista',
  },
  {
    name: 'Sahal Tayiban Muntaz',
    email: 'sahaltayibanmutaz@gmail.com',
    role: 'barista',
  },
  {
    name: 'Jemi Aris Wijaya',
    email: 'jemiwijaya010@gmail.com',
    role: 'barista',
  },
  {
    name: 'Fadli Krustian',
    email: 'krustian.f@gmail.com',
    role: 'barista',
  },
];

export async function POST() {
  try {
    // Hash the default password
    const saltRounds = 10;
    const passwordHash = await bcrypt.hash(DEFAULT_PASSWORD, saltRounds);

    const usersToInsert = usersData.map(user => ({
      ...user,
      password_hash: passwordHash,
      is_active: true,
    }));

    // Insert users into database
    const { data, error } = await supabase
      .from('users')
      .insert(usersToInsert)
      .select();

    if (error) {
      console.error('Supabase error:', error);
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json({
      message: `Successfully inserted ${data?.length || 0} users`,
      users: data,
    });
  } catch (error) {
    console.error('Error seeding users:', error);
    return Response.json(
      { error: 'Failed to seed users' },
      { status: 500 }
    );
  }
}
