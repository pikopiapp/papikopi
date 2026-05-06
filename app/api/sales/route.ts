import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      outlet_id,
      barista_id,
      total_amount,
      payment_method,
      items,
    } = body;

    if (!outlet_id || !barista_id || !total_amount || !payment_method || !items) {
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 }
      );
    }

    // Calculate HPP and profit
    let hppTotal = 0;
    for (const item of items) {
      hppTotal += item.hpp * item.quantity;
    }

    // Get bonus tiers
    const { data: bonusTiers } = await supabase
      .from("bonus_tiers")
      .select("*")
      .order("min", { ascending: true });

    // Calculate bonus (progressive omzet)
    let bonusPercentage = 0;
    if (bonusTiers) {
      for (const tier of bonusTiers) {
        if (total_amount >= tier.min && total_amount < tier.max) {
          bonusPercentage = tier.percentage;
          break;
        }
        if (tier.max === null && total_amount >= tier.min) {
          bonusPercentage = tier.percentage;
          break;
        }
      }
    }

    const bonusAmount = (total_amount * bonusPercentage) / 100;

    // Assume operational cost for now (can be fetched from DB)
    const operationalCost = 0;

    // Calculate profit
    const profit = total_amount - hppTotal - bonusAmount - operationalCost;

    // Create sale
    const { data: saleData, error: saleError } = await supabase
      .from("sales")
      .insert({
        outlet_id,
        barista_id,
        total_amount,
        payment_method,
        hpp_total: hppTotal,
        bonus_amount: bonusAmount,
        profit,
      })
      .select()
      .single();

    if (saleError) throw saleError;

// Add sale items and decrease product batch quantities
    for (const item of items) {
      const { error: itemError } = await supabase
        .from("sale_items")
        .insert({
          sale_id: saleData.id,
          product_id: item.product_id,
          quantity: item.quantity,
          price: item.price,
          hpp: item.hpp,
        });

      if (itemError) throw itemError;

      // Decrease product batch quantity for this outlet
      // Find available batches assigned to this outlet for this product
      const { data: batches } = await supabase
        .from("product_batches")
        .select("id, quantity")
        .eq("outlet_id", outlet_id)
        .eq("product_id", item.product_id)
        .eq("status", "assigned")
        .gt("quantity", 0)
        .order("created_at", { ascending: true });

      let remainingToDeduct = item.quantity;
      if (batches && batches.length > 0) {
        for (const batch of batches) {
          if (remainingToDeduct <= 0) break;
          const deductAmount = Math.min(batch.quantity, remainingToDeduct);
          const newQty = batch.quantity - deductAmount;
          
          await supabase
            .from("product_batches")
            .update({ 
              quantity: newQty,
              status: newQty === 0 ? "sold" : "assigned"
            })
            .eq("id", batch.id);
          
          remainingToDeduct -= deductAmount;
        }
      }
    }

    // Trigger notification
    await supabase.from("notifications").insert({
      user_id: barista_id,
      title: "Transaksi Berhasil",
      message: `Transaksi sebesar Rp ${total_amount.toLocaleString("id-ID")} berhasil diproses.`,
      type: "success",
    });

    return NextResponse.json({
      success: true,
      sale_id: saleData.id,
      bonus_percentage: bonusPercentage,
      profit,
    });
  } catch (error) {
    console.error("Sales API error:", error);
    return NextResponse.json(
      { error: error instanceof Error ? error.message : "Internal server error" },
      { status: 500 }
    );
  }
}

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const sale_id = searchParams.get("id");

    if (sale_id) {
      // Get single sale
      const { data: sale, error } = await supabase
        .from("sales")
        .select("*")
        .eq("id", sale_id)
        .single();

      if (error) throw error;

      // Get sale items
      const { data: items } = await supabase
        .from("sale_items")
        .select("*")
        .eq("sale_id", sale_id);

      return NextResponse.json({ sale, items });
    }

    // Get all sales
    const { data: sales, error } = await supabase
      .from("sales")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) throw error;

    return NextResponse.json({ sales });
  } catch (error) {
    console.error("Get sales error:", error);
    return NextResponse.json(
      { error: error instanceof Error ? error.message : "Internal server error" },
      { status: 500 }
    );
  }
}
