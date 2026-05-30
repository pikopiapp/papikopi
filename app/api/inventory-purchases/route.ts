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
    .from("inventory_purchases")
    .select("*, ingredients(name, unit)")
    .order("purchase_date", { ascending: false });
  if (from && to) {
    query = query.gte("purchase_date", from).lte("purchase_date", to);
  }
  const { data, error } = await query;
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  // Map ingredient name/unit to top-level for easier frontend use
  const mapped = (data || []).map((row: any) => ({
    ...row,
    ingredient_name: row.ingredients?.name,
    unit: row.ingredients?.unit,
  }));
  return NextResponse.json(mapped);
}
