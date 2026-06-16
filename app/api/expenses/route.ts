import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const date = searchParams.get("date");
  const from = date ? `${date}T00:00:00+07:00` : undefined;
  const to = date ? `${date}T23:59:59+07:00` : undefined;
  let query = supabase.from("expenses").select("*").order("created_at", { ascending: false });
  if (from && to) {
    query = query.gte("created_at", from).lte("created_at", to);
  }
  const { data, error } = await query;
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json(data || []);
}

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { category, description, amount, created_at } = body;
  const { data, error } = await supabase.from("expenses").insert([
    { category, description, amount, created_at }
  ]).select();
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json(data?.[0] || {});
}
