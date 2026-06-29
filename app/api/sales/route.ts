import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import { calculateBonusFromJson } from '@/lib/bonus-calculator';

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      outlet_id,
      barista_id,
      total_amount,
      payment_method,
      items,
      operational_cost: operationalCostFromBody,
      meal_amount: mealAmountFromBody,
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

    // Get bonus tiers from DB and calculate progressive bonus
    const { data: bonusTiers, error: bonusTiersError } = await supabase
      .from("bonus_tiers")
      .select("min, max, percentage")
      .order("min", { ascending: true });

    if (bonusTiersError) throw bonusTiersError;

    let bonusAmount = 0;
    let bonusPercentage = 0;
    if (bonusTiers && Array.isArray(bonusTiers) && bonusTiers.length > 0) {
      const bonusResult = calculateBonusFromJson(total_amount, bonusTiers as any[]);
      bonusAmount = Math.round(bonusResult.totalBonus || 0);
      bonusPercentage = Math.round((bonusResult.effectivePercentage || 0) * 10) / 10;
    }

    // Operational and meal costs: prefer explicit values from request, fallback to 0
    const operationalCost = Number(operationalCostFromBody ?? 0);
    const mealAmount = Number(mealAmountFromBody ?? 0);

    // Calculate profit
    const profit = total_amount - hppTotal - bonusAmount - operationalCost - mealAmount;

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
        operational_cost: operationalCost,
        meal_amount: mealAmount,
        profit,
      })
      .select()
      .single();

    if (saleError) throw saleError;
    const saleId = saleData.id;

    // Insert sale_items in batch so we can rollback if needed
    const saleItemsToInsert = items.map((item: any) => ({
      sale_id: saleId,
      product_id: item.product_id,
      quantity: item.quantity,
      price: item.price,
      hpp: item.hpp,
    }));

    const { error: saleItemsError } = await supabase
      .from("sale_items")
      .insert(saleItemsToInsert);

    if (saleItemsError) {
      await supabase.from("sales").delete().eq("id", saleId);
      throw saleItemsError;
    }

    // Decrease product batch quantity for this outlet and restore on failure
    const updatedBatches: Array<{ id: string; quantity: number; status: string }> = [];
    try {
      for (const item of items) {
        const { data: batches, error: batchesError } = await supabase
          .from("product_batches")
          .select("id, quantity, status")
          .eq("outlet_id", outlet_id)
          .eq("product_id", item.product_id)
          .eq("status", "assigned")
          .gt("quantity", 0)
          .order("created_at", { ascending: true });

        if (batchesError) throw batchesError;

        let remainingToDeduct = item.quantity;
        if (batches && batches.length > 0) {
          for (const batch of batches) {
            if (remainingToDeduct <= 0) break;
            const deductAmount = Math.min(batch.quantity, remainingToDeduct);
            const newQty = batch.quantity - deductAmount;

            const { error: batchUpdateError } = await supabase
              .from("product_batches")
              .update({
                quantity: newQty,
                status: newQty === 0 ? "sold" : "assigned",
              })
              .eq("id", batch.id);

            if (batchUpdateError) throw batchUpdateError;

            updatedBatches.push({ id: batch.id, quantity: batch.quantity, status: batch.status });
            remainingToDeduct -= deductAmount;
          }
        }
      }
    } catch (batchError) {
      console.error("Rollback product batch error:", batchError);
      for (const batch of updatedBatches) {
        await supabase
          .from("product_batches")
          .update({ quantity: batch.quantity, status: batch.status })
          .eq("id", batch.id);
      }
      await supabase.from("sale_items").delete().eq("sale_id", saleId);
      await supabase.from("sales").delete().eq("id", saleId);
      throw batchError;
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
