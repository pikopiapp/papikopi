import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import { supabaseServer } from "@/lib/supabaseServer";
import { calculateBonusFromJson } from '@/lib/bonus-calculator';

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, barista_id, total_amount, payment_method, items } = body;

    const totalAmount = Number(total_amount);
    const normalizedItems = (Array.isArray(items) ? items : [])
      .map((item: any) => ({
        product_id: item?.product_id,
        quantity: Number(item?.quantity) || 0,
        price: Number(item?.price) || 0,
        hpp: Number(item?.hpp) || 0,
      }))
      .filter((item) => item.product_id && item.quantity > 0);

    if (
      !outlet_id ||
      !barista_id ||
      !Number.isFinite(totalAmount) ||
      totalAmount <= 0 ||
      !payment_method ||
      normalizedItems.length === 0
    ) {
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 }
      );
    }

    // Calculate HPP and profit
    let hppTotal = 0;
    for (const item of normalizedItems) {
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
      const bonusResult = calculateBonusFromJson(totalAmount, bonusTiers as any[]);
      bonusAmount = Math.round(bonusResult.totalBonus || 0);
      bonusPercentage = Math.round((bonusResult.effectivePercentage || 0) * 10) / 10;
    }

    // `sales` has no meal/operational cost columns; only the daily summary RPC derives
    // a meal allowance, so profit here is revenue minus HPP minus bonus.
    const profit = totalAmount - hppTotal - bonusAmount;

    // Service role: the session is already enforced by middleware, and anon cannot write these
    // tables under RLS. Unknown columns (meal_amount/operational_cost) used to fail the insert.
    const { data: saleData, error: saleError } = await supabaseServer
      .from("sales")
      .insert({
        outlet_id,
        barista_id,
        total_amount: totalAmount,
        payment_method,
        hpp_total: hppTotal,
        bonus_amount: bonusAmount,
        profit,
      })
      .select()
      .single();

    if (saleError) throw saleError;
    const saleId = saleData.id;

    // Insert sale_items in batch so we can rollback if needed
    const saleItemsToInsert = normalizedItems.map((item) => ({
      sale_id: saleId,
      product_id: item.product_id,
      quantity: item.quantity,
      price: item.price,
      hpp: item.hpp,
    }));

    const { error: saleItemsError } = await supabaseServer
      .from("sale_items")
      .insert(saleItemsToInsert);

    if (saleItemsError) {
      await supabaseServer.from("sales").delete().eq("id", saleId);
      throw saleItemsError;
    }

    // Decrease product batch quantity for this outlet and restore on failure
    const updatedBatches: Array<{ id: string; quantity: number; status: string }> = [];
    try {
      for (const item of normalizedItems) {
        const { data: batches, error: batchesError } = await supabaseServer
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

            const { error: batchUpdateError } = await supabaseServer
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
        await supabaseServer
          .from("product_batches")
          .update({ quantity: batch.quantity, status: batch.status })
          .eq("id", batch.id);
      }
      await supabaseServer.from("sale_items").delete().eq("sale_id", saleId);
      await supabaseServer.from("sales").delete().eq("id", saleId);
      throw batchError;
    }

    // Trigger notification
    await supabaseServer.from("notifications").insert({
      user_id: barista_id,
      title: "Transaksi Berhasil",
      message: `Transaksi sebesar Rp ${totalAmount.toLocaleString("id-ID")} berhasil diproses.`,
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
