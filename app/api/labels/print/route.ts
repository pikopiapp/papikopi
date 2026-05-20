import { NextRequest, NextResponse } from 'next/server';
import QRCode from 'qrcode';

/**
 * POST /api/labels/print
 * Generate printable label with QR code for thermal printer
 * Body: {
 *   product_name: string,
 *   product_id: string,
 *   batch: string,
 *   production_date: string (YYYY-MM-DD),
 *   quantity: number (number of labels to print)
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
    } = body;

    if (!product_name || !product_id || !batch || !production_date) {
      return NextResponse.json(
        { error: 'Missing required fields' },
        { status: 400 }
      );
    }

    // Generate QR code data
    const qrData = JSON.stringify({
      product_id,
      batch,
      production_date,
      product: product_name,
    });

    // Generate QR code as data URL (high quality for thermal printer)
    const qrImage = await QRCode.toDataURL(qrData, {
      width: 200,
      margin: 1,
      errorCorrectionLevel: 'H',
      color: {
        dark: '#000000',
        light: '#ffffff',
      },
    });

    // Format date DD-MM-YYYY
    const date = new Date(production_date);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    const formattedDate = `${day}-${month}-${year}`;

    // Generate multiple label copies based on quantity
    let labelsHTML = '';
    for (let i = 0; i < quantity; i++) {
      labelsHTML += `
        <div class="label">
          <div class="label-content">
            <!-- Left Column -->
            <div class="left-column">
              <div class="production-date">${formattedDate}</div>
              <div class="product-name">${product_name.toUpperCase()}</div>
              <div class="instagram">@papikopi_bdg</div>
            </div>
            
            <!-- Right Column -->
            <div class="right-column">
              <img src="${qrImage}" alt="QR Code" class="qr-code">
            </div>
          </div>
        </div>
      `;
    }

    // Return HTML label template
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
            justify-content: space-between;
            font-family: 'Arial', sans-serif;
          }
          
          .production-date {
            font-size: 8pt;
            font-weight: normal;
            line-height: 1;
          }
          
          .product-name {
            font-size: 10pt;
            font-weight: bold;
            line-height: 1.1;
            text-transform: uppercase;
            word-wrap: break-word;
            flex: 1;
            display: flex;
            align-items: center;
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
