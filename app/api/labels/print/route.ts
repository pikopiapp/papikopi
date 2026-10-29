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

    // Generate QR code data for preview mode only
    const qrData = JSON.stringify({
      product_id,
      batch,
      production_date,
      product: product_name,
    });

    const qrImage = await QRCode.toDataURL(qrData, {
      width: 200,
      margin: 1,
      errorCorrectionLevel: 'H',
      color: {
        dark: '#000000',
        light: '#ffffff',
      },
    });

    const date = new Date(production_date);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    const formattedDate = `${day}-${month}-${year}`;

    // XP-460B is fed 108 mm liner carrying two 50 x 20 mm labels per row. The Windows
    // driver lays them out as: 1.3 mm margin, 50 mm label, 5.4 mm gap, 50 mm label,
    // 1.3 mm margin, so the page must place each label at those exact offsets.
    const labelInnerHTML = `
        <div class="left-column">
          <div class="production-date">${formattedDate}</div>
          <div class="product-name">${escapeHtml(product_name.toUpperCase())}</div>
          <div class="instagram">@papikopi_bdg</div>
        </div>
        <div class="right-column">
          <div class="qr-code"></div>
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
            size: 108mm 20mm;
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
          .sheet {
            position: relative;
            width: 108mm;
            height: 20mm;
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
          .label.left {
            left: 1.3mm;
          }
          .label.right {
            left: 56.7mm;
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
            width: 16mm;
            height: 16mm;
            flex-shrink: 0;
          }
          .qr-code {
            width: 100%;
            height: 100%;
            background-image: url("${qrImage}");
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
          }
          @media print {
            .label {
              outline: none;
            }
          }
        </style>
      </head>
      <body>
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
