import { NextRequest, NextResponse } from "next/server";
import QRCode from "qrcode";

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const sale_id = searchParams.get("id");
    const format = searchParams.get("format") || "dataurl";

    if (!sale_id) {
      return NextResponse.json(
        { error: "Sale ID is required" },
        { status: 400 }
      );
    }

    const qrData = `/o/${sale_id}`;

    if (format === "svg") {
      const svg = await QRCode.toString(qrData, {
        type: "svg",
        width: 300,
        margin: 2,
        color: {
          dark: "#000000",
          light: "#FFFFFF",
        },
      });

      return NextResponse.json({ qr_code: svg });
    } else {
      const dataUrl = await QRCode.toDataURL(qrData, {
        width: 300,
        margin: 2,
        color: {
          dark: "#000000",
          light: "#FFFFFF",
        },
      });

      return NextResponse.json({ qr_code: dataUrl });
    }
  } catch (error) {
    console.error("QR Code generation error:", error);
    return NextResponse.json(
      { error: error instanceof Error ? error.message : "Failed to generate QR code" },
      { status: 500 }
    );
  }
}
