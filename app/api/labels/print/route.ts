import { NextRequest, NextResponse } from 'next/server';
import * as QRCode from 'qrcode';
import {
  buildTsplPrintJob,
  getPrinterHost,
  getPrinterPort,
  sendToNetworkPrinter,
} from '../../../../lib/tspl-printer';

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

    const effectiveQuantity = Math.max(1, Number(quantity) || 1);

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

    let labelsHTML = '';
    for (let i = 0; i < effectiveQuantity; i++) {
      labelsHTML += `
        <div class="label">
          <div class="label-content">
            <div class="left-column">
              <div class="production-date">${formattedDate}</div>
              <div class="product-name">${product_name.toUpperCase()}</div>
              <div class="instagram">@papikopi_bdg</div>
            </div>
            <div class="right-column">
              <img src="${qrImage}" alt="QR Code" class="qr-code">
            </div>
          </div>
        </div>
      `;
    }

    const html = `
      <!DOCTYPE html>
      <html lang="id">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Label - ${product_name}</title>
        <style>
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }
          body {
            font-family: 'Arial', sans-serif;
            background: white;
            padding: 2mm;
          }
          .label {
            width: 50mm;
            height: 20mm;
            margin-bottom: 1mm;
            page-break-inside: avoid;
            background: white;
            border: 1px dashed #999;
          }
          .label-content {
            display: flex;
            width: 100%;
            height: 100%;
            padding: 1mm;
            gap: 1mm;
          }
          .left-column {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            padding-top: 1.5mm;
            padding-bottom: 1.5mm;
            padding-left: 1mm;
            padding-right: 0.5mm;
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
            margin: 0.3mm 0;
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
            object-fit: contain;
            border: 0.5mm solid #000;
          }
          @media print {
            body {
              margin: 0;
              padding: 1mm;
            }
            .label {
              margin-bottom: 0.5mm;
            }
          }
        </style>
      </head>
      <body>
        ${labelsHTML}
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
