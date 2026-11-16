import { NextRequest, NextResponse } from 'next/server';
import * as QRCode from 'qrcode';
import {
  buildTsplPrintJob,
  getPrinterHost,
  getPrinterPort,
  sendToNetworkPrinter,
} from '../../../../lib/tspl-printer';

function escapeHtml(value: string): string {
  return String(value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}

/**
 * POST /api/labels/print
 * Generate printable label with QR code for thermal printer
 * Body: {
 *   product_name: string,
 *   product_id: string,
 *   batch: string,
 *   production_date: string (YYYY-MM-DD),
 *   quantity: number,
 *   send_to_printer?: boolean
 * }
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      product_name,
      product_id,
      batch,
      production_date,
      quantity = 1,
      send_to_printer = false,
    } = body;

    if (!product_name || !product_id || !batch || !production_date) {
      return NextResponse.json(
        { error: 'Missing required fields' },
        { status: 400 }
      );
    }

    const effectiveQuantity = Math.max(1, Math.floor(Number(quantity) || 1));
    if (effectiveQuantity > 2000) {
      return NextResponse.json(
        { error: 'Jumlah label terlalu banyak (maksimal 2000 per cetak)' },
        { status: 400 }
      );
    }

    if (send_to_printer) {
      const printerHost = getPrinterHost();
      const printerPort = getPrinterPort();

      if (!printerHost) {
        return NextResponse.json(
          { error: 'Printer host not configured. Set PRINTER_HOST or NEXT_PUBLIC_PRINTER_HOST.' },
          { status: 500 }
        );
      }

      const tspl = buildTsplPrintJob({
        productName: product_name,
        productId: product_id,
        batch,
        productionDate: production_date,
        quantity: effectiveQuantity,
      });

      console.log('Sending TSPL to printer', { printerHost, printerPort, quantity: effectiveQuantity });
      try {
        await sendToNetworkPrinter(tspl, printerHost, printerPort, 2);

        return NextResponse.json(
          {
            success: true,
            message: `Sent ${effectiveQuantity} label(s) to printer ${printerHost}:${printerPort}`,
          },
          { status: 200 }
        );
      } catch (printerError) {
        const errorMessage = printerError instanceof Error ? printerError.message : 'Printer send failed';
        console.error('Printer send error:', errorMessage);
        return NextResponse.json(
          {
            error: 'Failed to send to printer',
            printer_error: true,
            printer_message: errorMessage,
          },
          { status: 502 }
        );
      }
    }

    // Preview mode only. The label QR is ~17 mm wide, so the payload dictates how
    // many printer dots each module gets. A bare product UUID is 36 characters
    // (29 modules, ~4.7 dots each at ECC M) and the app resolves the product from
    // it, so the symbol stays crisp on thermal paper without the product name.
    const qrData = product_id;

    // Vector output: Chrome scales the label to 203 dpi, and a 200 px PNG
    // resampled to 128 dots blurs module edges into grey.
    const qrSvg = await QRCode.toString(qrData, {
      type: 'svg',
      margin: 1,
      errorCorrectionLevel: 'M',
      color: {
        dark: '#000000',
        light: '#ffffff',
      },
    });
    const qrImage = `data:image/svg+xml;base64,${Buffer.from(qrSvg).toString('base64')}`;

    const date = new Date(production_date);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    const formattedDate = `${day}-${month}-${year}`;

    // XP-460B is fed 108 mm liner carrying two 50 x 20 mm labels per row, with 4 mm
    // between labels across and 4 mm between rows. The page pitch is therefore
    // 108 x 24 mm (20 mm label + 4 mm row gap) or every row after the first drifts.
    // Across the sheet: 2 mm margin, 50 mm label, 4 mm gap, 50 mm label, 2 mm margin.
    const labelInnerHTML = `
        <div class="left-column">
          <div class="production-date">${formattedDate}</div>
          <div class="product-name">${escapeHtml(product_name.toUpperCase())}</div>
          <div class="instagram">@papikopi_bdg</div>
        </div>
        <div class="right-column">
          <img src="${qrImage}" alt="QR" class="qr-code">
        </div>`;

    let sheetsHTML = '';
    for (let i = 0; i < effectiveQuantity; i += 2) {
      const left = `<div class="label left">${labelInnerHTML}</div>`;
      const right = i + 1 < effectiveQuantity
        ? `<div class="label right">${labelInnerHTML}</div>`
        : '<div class="label right empty"></div>';
      sheetsHTML += `<div class="sheet">${left}${right}</div>`;
    }

    const html = `
      <!DOCTYPE html>
      <html lang="id">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Label - ${escapeHtml(product_name)}</title>
        <style>
          @page {
            size: 108mm 24mm;
            margin: 0;
          }
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }
          html, body {
            width: 108mm;
            background: white;
          }
          body {
            font-family: 'Arial', sans-serif;
          }
          .print-help {
            width: 108mm;
            padding: 2mm 2mm;
            font: 11px/1.5 Arial, sans-serif;
            color: #444;
            background: #fffbe6;
            border-bottom: 1px solid #e5d9a8;
          }
          .print-help b {
            color: #111;
          }
          .sheet {
            position: relative;
            width: 108mm;
            height: 24mm;
            page-break-after: always;
            break-after: page;
          }
          .sheet:last-child {
            page-break-after: auto;
            break-after: auto;
          }
          .label {
            position: absolute;
            top: 0;
            width: 50mm;
            height: 20mm;
            padding: 1mm;
            display: flex;
            gap: 1mm;
            background: white;
            outline: 1px dashed #999;
            outline-offset: -1px;
          }
          /* Content sits 2 mm left of the die-cut cell: the driver's exposed-liner
             offset pushes the image right on paper, so both columns shift back. */
          .label.left {
            left: 0mm;
          }
          .label.right {
            left: 54mm;
          }
          .left-column {
            flex: 1;
            min-width: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            padding: 0.5mm 0.5mm 0.5mm 1mm;
          }
          .production-date {
            font-size: 8pt;
            line-height: 1;
          }
          .product-name {
            font-size: 10pt;
            font-weight: bold;
            line-height: 1;
            text-transform: uppercase;
            word-wrap: break-word;
            overflow-wrap: anywhere;
          }
          .instagram {
            font-size: 7pt;
            font-weight: bold;
            line-height: 1;
          }
          .right-column {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 17mm;
            height: 17mm;
            flex-shrink: 0;
          }
          .qr-code {
            width: 100%;
            height: 100%;
            object-fit: contain;
            display: block;
          }
          @media print {
            .print-help {
              display: none;
            }
            .label {
              outline: none;
            }
          }
        </style>
      </head>
      <body>
        <div class="print-help">
          Di dialog print: buka <b>More settings</b> &rarr; Paper size <b>108 &times; 24 mm</b>,
          Margins <b>None</b>, Scale <b>100%</b>, Orientation <b>Landscape</b>.
          Matikan <b>Headers and footers</b>. Kalau QR tidak muncul, jangan pakai background graphics.
        </div>
        ${sheetsHTML}
      </body>
      </html>
    `;

    return new NextResponse(html, {
      headers: {
        'Content-Type': 'text/html; charset=utf-8',
        'Content-Disposition': 'inline; filename="labels.html"',
      },
    });
  } catch (error) {
    console.error('❌ Error generating label:', error);
    return NextResponse.json(
      { error: 'Failed to generate label' },
      { status: 500 }
    );
  }
}
