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
 *   expiry_date?: string
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
      expiry_date,
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

    // Generate QR code as data URL
    const qrImage = await QRCode.toDataURL(qrData, {
      width: 200, // 200px for thermal printer
      margin: 1,
      color: {
        dark: '#000000',
        light: '#ffffff',
      },
    });

    // Format dates
    const prodDate = new Date(production_date).toLocaleDateString('id-ID');
    const expDate = expiry_date
      ? new Date(expiry_date).toLocaleDateString('id-ID')
      : 'N/A';

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
            font-family: 'Courier New', monospace;
            background: white;
            padding: 0;
          }
          
          .label {
            width: 50mm;
            height: 20mm;
            padding: 2mm;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border: 1px solid #000;
            background: white;
          }
          
          .header {
            display: flex;
            gap: 2mm;
            align-items: flex-start;
          }
          
          .qr-section {
            flex-shrink: 0;
          }
          
          .qr-section img {
            width: 14mm;
            height: 14mm;
            border: 0.5mm solid #000;
          }
          
          .info-section {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            font-size: 6pt;
            line-height: 1.2;
          }
          
          .product-name {
            font-weight: bold;
            font-size: 7pt;
            margin-bottom: 1mm;
          }
          
          .date-row {
            display: flex;
            justify-content: space-between;
            font-size: 5pt;
            gap: 1mm;
          }
          
          .footer {
            text-align: center;
            font-size: 5pt;
            font-weight: bold;
            margin-top: 1mm;
            border-top: 0.5mm solid #000;
            padding-top: 0.5mm;
          }
          
          @media print {
            body {
              margin: 0;
              padding: 2mm;
            }
            .label {
              page-break-after: avoid;
            }
          }
        </style>
      </head>
      <body>
        <div class="label">
          <div class="header">
            <div class="qr-section">
              <img src="${qrImage}" alt="QR Code">
            </div>
            <div class="info-section">
              <div class="product-name">${product_name}</div>
              <div class="date-row">
                <span>Prod: ${prodDate}</span>
              </div>
              <div class="date-row">
                <span>Exp: ${expDate}</span>
              </div>
              <div class="date-row">
                <span>Batch: ${batch.substring(0, 12)}</span>
              </div>
            </div>
          </div>
          <div class="footer">@papikopi_bdg</div>
        </div>
      </body>
      </html>
    `;

    return new NextResponse(html, {
      headers: {
        'Content-Type': 'text/html; charset=utf-8',
        'Content-Disposition': 'inline; filename="label.html"',
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
