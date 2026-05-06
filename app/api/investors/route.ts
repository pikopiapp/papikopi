import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const outlet_id = searchParams.get("outlet_id");

    let query = supabase
      .from("users")
      .select("id, name, email, phone, outlet_id, is_active, created_at")
      .eq("role", "investor")
      .eq("is_active", true)
      .order("name", { ascending: true });

    // If outlet_id is provided, filter by outlet
    if (outlet_id) {
      query = query.eq("outlet_id", outlet_id);
    }

    const { data, error } = await query;

    if (error) throw error;

    return NextResponse.json(data || []);
  } catch (error) {
    console.error("Investors fetch error:", error);
    return NextResponse.json(
      { error: "Failed to fetch investors" },
      { status: 500 }
    );
  }
}
