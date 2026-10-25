import fs from 'node:fs';
import path from 'node:path';
import * as net from 'net';

const DOTS_PER_MM = 8;
const PRINTER_PORT_DEFAULT = 9100;

function loadDotEnvFile(fileName: string): Record<string, string> {
  try {
    const filePath = path.join(process.cwd(), fileName);
    if (!fs.existsSync(filePath)) {
      return {};
    }

    const content = fs.readFileSync(filePath, 'utf8');
    return content
      .split(/\r?\n/)
      .map((line) => line.trim())
      .filter((line) => line && !line.startsWith('#'))
      .reduce<Record<string, string>>((acc, line) => {
        const [key, ...rest] = line.split('=');
        const value = rest.join('=').trim();
        if (key) {
          acc[key.trim()] = value.replace(/(^"|"$)/g, '');
        }
        return acc;
      }, {});
  } catch {
    return {};
  }
}

function readEnvValue(key: string): string | null {
  const fromProcess = process.env[key];
  if (fromProcess !== undefined && fromProcess !== null && fromProcess !== '') {
    return fromProcess;
  }

  const envLocal = loadDotEnvFile('.env.local');
  if (envLocal[key]) {
    return envLocal[key];
  }

  const envFile = loadDotEnvFile('.env');
  if (envFile[key]) {
    return envFile[key];
  }

  return null;
}

export interface LabelPrintRequest {
  productName: string;
  productId: string;
  batch: string;
  productionDate: string;
  quantity: number;
}

function mmToDots(mm: number): number {
  return Math.round(mm * DOTS_PER_MM);
}

function escapeTsplText(value: string): string {
  return value.replace(/"/g, '""').replace(/\r|\n/g, ' ').trim();
}

function splitLabelText(value: string, maxLength: number): string[] {
  const normalized = value.trim().replace(/\s+/g, ' ');
  const words = normalized.split(' ');
  const lines: string[] = [];
  let currentLine = '';

  for (const word of words) {
    if (currentLine.length + word.length + (currentLine ? 1 : 0) <= maxLength) {
      currentLine = currentLine ? `${currentLine} ${word}` : word;
    } else {
      if (currentLine) {
        lines.push(currentLine);
      }
      currentLine = word;
    }
  }

  if (currentLine) {
    lines.push(currentLine);
  }

  return lines.slice(0, 2);
}

function formatProductionDate(productionDate: string): string {
  const date = new Date(productionDate);
  const day = String(date.getDate()).padStart(2, '0');
  const month = String(date.getMonth() + 1).padStart(2, '0');
  const year = date.getFullYear();
  return `${day}-${month}-${year}`;
}

export function buildTsplPrintJob(request: LabelPrintRequest): string {
  const { productName, productId, batch, productionDate, quantity } = request;
  const qrPayload = JSON.stringify({
    product_id: productId,
    batch,
    production_date: productionDate,
    product: productName,
  });

  const formattedDate = formatProductionDate(productionDate);
  const productLines = splitLabelText(productName, 18);

  const lines: string[] = [
    'SIZE 108 mm,20 mm',
    'GAP 0 mm,0 mm',
    'REFERENCE 0,0',
    'SPEED 4',
    'DENSITY 8',
    'SET TEAR ON',
    'DIRECTION 1',
  ];

  const rows = Math.ceil(quantity / 2);
  for (let row = 0; row < rows; row++) {
    const labelIndexLeft = row * 2;
    const labelIndexRight = row * 2 + 1;
    const topDot = mmToDots(1);
    const dateY = topDot;
    const productY = mmToDots(8);
    const lineHeight = mmToDots(4);

    lines.push('CLS');

    for (const column of [0, 1] as const) {
      const labelIndex = column === 0 ? labelIndexLeft : labelIndexRight;
      if (labelIndex >= quantity) continue;

      const xBase = mmToDots(column === 0 ? 0 : 55.4);
      const qrX = xBase + mmToDots(30);
      const textX = xBase + mmToDots(4);
      const escapedDate = escapeTsplText(formattedDate);
      const escapedQrPayload = escapeTsplText(qrPayload);

      lines.push(`QRCODE ${qrX},${topDot},M,4,A,0,"${escapedQrPayload}"`);
      lines.push(`TEXT ${textX},${dateY},"3",0,1,1,"${escapedDate}"`);

      for (let lineIndex = 0; lineIndex < productLines.length; lineIndex += 1) {
        const lineText = escapeTsplText(productLines[lineIndex]);
        lines.push(
          `TEXT ${textX},${productY + lineIndex * lineHeight},"3",0,1,1,"${lineText}"`
        );
      }
    }

    lines.push('PRINT 1,1');
  }

  return `${lines.join('\r\n')}\r\n`;
}

export function getPrinterHost(): string | null {
  return readEnvValue('PRINTER_HOST') || readEnvValue('NEXT_PUBLIC_PRINTER_HOST');
}

export function getPrinterPort(): number {
  const raw = readEnvValue('PRINTER_PORT') || readEnvValue('NEXT_PUBLIC_PRINTER_PORT') || String(PRINTER_PORT_DEFAULT);
  const parsed = Number(raw);
  return Number.isInteger(parsed) && parsed > 0 ? parsed : PRINTER_PORT_DEFAULT;
}

export function getPrinterConfig() {
  const host = getPrinterHost();
  const port = getPrinterPort();
  return {
    configured: Boolean(host),
    host,
    port,
  };
}

function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

export async function sendToNetworkPrinter(tspl: string, host: string, port: number, retries = 2): Promise<void> {
  let lastError: Error | null = null;

  for (let attempt = 0; attempt <= retries; attempt += 1) {
    try {
      await new Promise<void>((resolve, reject) => {
        const socket = net.createConnection(port, host, () => {
          socket.write(tspl, 'utf8', () => socket.end());
        });

        socket.on('error', (error) => {
          reject(new Error(`Printer connection failed: ${error.message}`));
        });

        socket.on('close', (hadError) => {
          if (hadError) {
            reject(new Error('Printer socket closed with error'));
          } else {
            resolve();
          }
        });
      });

      return;
    } catch (error) {
      lastError = error instanceof Error ? error : new Error(String(error));
      if (attempt < retries) {
        await sleep(150);
      }
    }
  }

  throw lastError || new Error('Unknown printer error');
}
