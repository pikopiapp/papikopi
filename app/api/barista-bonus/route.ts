import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const date = searchParams.get("date");
  let from = date ? `${date}T00:00:00+07:00` : undefined;
  let to = date ? `${date}T23:59:59+07:00` : undefined;
  let query = supabase
    .from("sales")
    .select("id, outlet_id, barista_id, total_amount, bonus_amount, created_at, outlets(name), users(name)")
    .order("created_at", { ascending: false });
  if (from && to) {
    query = query.gte("created_at", from).lte("created_at", to);
  }
  const { data, error } = await query;
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  // Map outlet and barista name to top-level
  const mapped = (data || []).map((row: any) => ({
    ...row,
    outlet_name: row.outlets?.name,
    barista_name: row.users?.name,
  }));
  return NextResponse.json(mapped);
}
