import assert from 'node:assert/strict';
import {
  buildTsplPrintJob,
  getPrinterHost,
  getPrinterPort,
} from './tspl-printer';

function test(name: string, fn: () => void | Promise<void>) {
  try {
    const result = fn();
    if (result && typeof (result as any).then === 'function') {
      (result as Promise<void>).catch((error) => {
        console.error(`✗ ${name}`);
        console.error(error);
        process.exitCode = 1;
      });
    } else {
      console.log(`✓ ${name}`);
    }
  } catch (error) {
    console.error(`✗ ${name}`);
    console.error(error);
    process.exitCode = 1;
  }
}

test('buildTsplPrintJob should generate two QRCODE blocks for quantity 2', () => {
  const tspl = buildTsplPrintJob({
    productName: 'Butterscotch (M)',
    productId: 'P-1001',
    batch: 'BATCH-20260723-001',
    productionDate: '2026-07-23',
    quantity: 2,
  });

  const qrcodeCount = (tspl.match(/QRCODE /g) || []).length;
  const printCount = (tspl.match(/PRINT 1,1/g) || []).length;

  assert.equal(qrcodeCount, 2, 'Should generate exactly 2 QR codes for 2 labels');
  assert.equal(printCount, 1, 'Should print one row for two labels');
  assert.ok(tspl.includes('SIZE 108 mm,20 mm'));
});

test('buildTsplPrintJob should generate five QRCODE blocks for quantity 5 and leave the last right cell empty', () => {
  const tspl = buildTsplPrintJob({
    productName: 'Butterscotch (M)',
    productId: 'P-1001',
    batch: 'BATCH-20260723-001',
    productionDate: '2026-07-23',
    quantity: 5,
  });

  const qrcodeCount = (tspl.match(/QRCODE /g) || []).length;
  const printCount = (tspl.match(/PRINT 1,1/g) || []).length;

  assert.equal(qrcodeCount, 5, 'Should generate exactly 5 QR codes for 5 labels');
  assert.equal(printCount, 3, 'Should print three rows for five labels');
});

test('buildTsplPrintJob should include formatted production date in DD-MM-YYYY', () => {
  const tspl = buildTsplPrintJob({
    productName: 'Butterscotch (M)',
    productId: 'P-1001',
    batch: 'BATCH-20260723-001',
    productionDate: '2026-07-23',
    quantity: 1,
  });

  assert.ok(tspl.includes('23-07-2026'), 'TSPL should contain the formatted production date');
  assert.ok(tspl.includes('TEXT '), 'TSPL should contain text drawing commands');
});

test('getPrinterHost and getPrinterPort should read environment configuration', () => {
  process.env.PRINTER_HOST = '192.168.0.100';
  process.env.PRINTER_PORT = '9100';

  assert.equal(getPrinterHost(), '192.168.0.100');
  assert.equal(getPrinterPort(), 9100);

  delete process.env.PRINTER_HOST;
  delete process.env.PRINTER_PORT;
});

console.log('All TSPL printer tests finished.');
