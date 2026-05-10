import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get("outlet_id");

    if (!outlet_id) {
      return NextResponse.json(
        { error: "ID outlet diperlukan" },
        { status: 400 }
      );
    }

    // Get outlet business day settings - optimized select
    const { data: outlet, error } = await supabase
      .from("outlets")
      .select("id, name, business_day_start_hour", { count: 'exact' })
      .eq("id", outlet_id)
      .limit(1)
      .single();

    if (error) {
      // Return default if outlet not found
      return NextResponse.json({
        outlet_id: outlet_id,
        outlet_name: 'Unknown',
        business_day_start_hour: 4,
      });
    }

    return NextResponse.json({
      outlet_id: outlet.id,
      outlet_name: outlet.name,
      business_day_start_hour: outlet.business_day_start_hour || 4,
    });
  } catch (error) {
    console.error("Kesalahan mengambil pengaturan outlet:", error);
    return NextResponse.json(
      {
        outlet_id: request.nextUrl.searchParams.get("outlet_id"),
        outlet_name: 'Unknown',
        business_day_start_hour: 4,
      },
      { status: 200 }
    );
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, business_day_start_hour } = body;

    if (!outlet_id || business_day_start_hour === undefined) {
      return NextResponse.json(
        { error: "Field yang diperlukan tidak lengkap: outlet_id, business_day_start_hour" },
        { status: 400 }
      );
    }

    // Validate hour is between 0 and 23
    if (
      typeof business_day_start_hour !== "number" ||
      business_day_start_hour < 0 ||
      business_day_start_hour > 23
    ) {
      return NextResponse.json(
        { error: "business_day_start_hour harus antara 0 dan 23" },
        { status: 400 }
      );
    }

    // Update outlet
    const { data: outlet, error } = await supabase
      .from("outlets")
      .update({ business_day_start_hour })
      .eq("id", outlet_id)
      .select()
      .single();

    if (error) throw error;

    console.log(
      `✅ Hari bisnis untuk outlet ${outlet_id} diperbarui ke ${business_day_start_hour}:00`
    );

    return NextResponse.json({
      success: true,
      message: `Jam mulai hari bisnis diperbarui ke ${business_day_start_hour}:00`,
      outlet_id: outlet.id,
      outlet_name: outlet.name,
      business_day_start_hour: outlet.business_day_start_hour,
    });
  } catch (error) {
    console.error("Kesalahan memperbarui pengaturan outlet:", error);
    return NextResponse.json(
      { error: "Gagal memperbarui pengaturan outlet" },
      { status: 500 }
    );
  }
}
