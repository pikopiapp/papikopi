import { NextResponse } from 'next/server';
import { getPrinterConfig } from '../../../../lib/tspl-printer';

export function GET() {
  const printerConfig = getPrinterConfig();
  return NextResponse.json(printerConfig);
}
