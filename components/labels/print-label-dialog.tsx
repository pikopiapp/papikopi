'use client';

import { useEffect, useState } from 'react';

interface PrintLabelProps {
  productId: string;
  productName: string;
  batch: string;
  productionDate: string;
  expiryDate?: string;
  quantity?: number; // Number of labels to print (default: 1)
  onClose?: () => void;
}

export function PrintLabelDialog({
  productId,
  productName,
  batch,
  productionDate,
  expiryDate,
  quantity = 1,
  onClose,
}: PrintLabelProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [previewUrl, setPreviewUrl] = useState<string | null>(null);
  // Free-text so the field can be cleared while typing; defaults to one label even when the
  // batch holds hundreds, so a stray click cannot send a full roll to the printer.
  const [quantityText, setQuantityText] = useState('1');
  const printQuantity = Math.max(1, Math.min(2000, parseInt(quantityText, 10) || 1));
  const [statusMessage, setStatusMessage] = useState<string | null>(null);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [printerConfigured, setPrinterConfigured] = useState<boolean | null>(null);
  const [printerStatusError, setPrinterStatusError] = useState<string | null>(null);

  useEffect(() => {
    let active = true;

    fetch('/api/labels/printer-status')
      .then(async (response) => {
        if (!response.ok) {
          throw new Error('Failed to read printer configuration');
        }
        return response.json();
      })
      .then((data) => {
        if (!active) return;
        setPrinterConfigured(Boolean(data.configured));
        if (data.configured === false) {
          setPrinterStatusError('Printer jaringan belum dikonfigurasi. XP-460B via USB: pakai Preview, lalu print dari browser (kertas 108 × 20 mm, margin None).');
        }
      })
      .catch((error) => {
        if (!active) return;
        console.error('Printer status fetch failed:', error);
        setPrinterConfigured(false);
        setPrinterStatusError('Gagal memeriksa status printer.');
      });

    return () => {
      active = false;
    };
  }, []);

  const handlePrint = async (sendToPrinter = false) => {
    setIsLoading(true);
    setErrorMessage(null);
    setStatusMessage(null);

    try {
      if (sendToPrinter) {
        if (printerConfigured === false) {
          setErrorMessage('Printer jaringan belum dikonfigurasi. Untuk XP-460B via USB, gunakan Preview lalu print dari browser.');
          return;
        }

        setStatusMessage('Mengirim label ke printer...');
      }

      const response = await fetch('/api/labels/print', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          product_name: productName,
          product_id: productId,
          batch,
          production_date: productionDate,
          expiry_date: expiryDate,
          quantity: printQuantity,
          send_to_printer: sendToPrinter,
        }),
      });

      if (!response.ok) {
        const errorData = await response.json();
        const message = errorData?.printer_message || errorData?.error || 'Failed to generate label';
        setErrorMessage(message);
        throw new Error(message);
      }

      if (sendToPrinter) {
        const data = await response.json();
        setStatusMessage(data.message || 'Labels sent to printer');
        return;
      }

      const html = await response.text();
      const blob = new Blob([html], { type: 'text/html' });
      const url = URL.createObjectURL(blob);
      setPreviewUrl((previousUrl) => {
        if (previousUrl) {
          URL.revokeObjectURL(previousUrl);
        }
        return url;
      });
      setStatusMessage('Tab label dibuka. Pilih printer XP-460B, kertas 108 × 20 mm, margin None.');

      const printWindow = window.open(url, '_blank');
      if (printWindow) {
        printWindow.addEventListener('load', () => {
          setTimeout(() => {
            printWindow.print();
          }, 250);
        });
      }
    } catch (error) {
      const message = error instanceof Error ? error.message : 'Gagal membuat label';
      console.error('❌ Error printing label:', error);
      setErrorMessage(message);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4" role="dialog" aria-modal="true">
      <div className="w-full max-w-sm rounded-lg bg-white p-4 shadow-xl">
        <div className="mb-3 flex items-start justify-between gap-2">
          <div>
            <h3 className="text-base font-semibold">Cetak Label / QR</h3>
            <p className="text-xs text-gray-500">
              {productName} · {batch}
            </p>
          </div>
          {onClose && (
            <button onClick={onClose} aria-label="Tutup" className="text-gray-500 hover:text-gray-700">
              ✕
            </button>
          )}
        </div>
        <div className="flex flex-col gap-3">
      <div className="flex flex-col gap-2">
        <label className="text-sm font-medium" htmlFor="label-quantity">Jumlah label</label>
        <div className="flex items-center gap-2">
          <button
            type="button"
            aria-label="Kurangi"
            onClick={() => setQuantityText(String(Math.max(1, printQuantity - 1)))}
            className="h-8 w-8 rounded border text-lg leading-none hover:bg-gray-50"
          >
            −
          </button>
          <input
            id="label-quantity"
            type="text"
            inputMode="numeric"
            value={quantityText}
            onChange={(e) => setQuantityText(e.target.value.replace(/\D/g, '').slice(0, 4))}
            onBlur={() => setQuantityText(String(printQuantity))}
            className="h-8 w-20 rounded border px-2 text-center text-sm"
          />
          <button
            type="button"
            aria-label="Tambah"
            onClick={() => setQuantityText(String(Math.min(2000, printQuantity + 1)))}
            className="h-8 w-8 rounded border text-lg leading-none hover:bg-gray-50"
          >
            +
          </button>
          <span className="text-xs text-gray-500">batch tercatat {quantity} unit</span>
        </div>
        <div className="flex flex-wrap gap-1">
          {[10, 25, 50, 100].map((preset) => (
            <button
              key={preset}
              type="button"
              onClick={() => setQuantityText(String(preset))}
              className={`px-2 py-1 text-xs rounded border ${
                printQuantity === preset ? 'bg-blue-600 text-white border-blue-600' : 'bg-white hover:bg-gray-50'
              }`}
            >
              {preset}
            </button>
          ))}
          <button
            type="button"
            onClick={() => setQuantityText(String(Math.max(1, quantity)))}
            className={`px-2 py-1 text-xs rounded border ${
              printQuantity === Math.max(1, quantity) ? 'bg-blue-600 text-white border-blue-600' : 'bg-white hover:bg-gray-50'
            }`}
          >
            Semua ({quantity})
          </button>
        </div>
        {printQuantity > quantity && (
          <p className="text-xs text-orange-700">
            Jumlah label melebihi stok batch ({quantity}); label tetap bisa dicetak sesuai permintaan.
          </p>
        )}
      </div>

      <div className="flex flex-col gap-2 sm:flex-row">
        <button
          onClick={() => handlePrint(false)}
          disabled={isLoading}
          className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:bg-gray-400 text-sm"
        >
          🖨️ Preview {printQuantity} {printQuantity === 1 ? 'Label' : 'Labels'}
          {isLoading && <span className="animate-spin">⏳</span>}
        </button>
        <button
          onClick={() => handlePrint(true)}
          disabled={isLoading || printerConfigured === false}
          title={
            printerConfigured === false
              ? 'Printer jaringan belum dikonfigurasi. Untuk XP-460B via USB, pakai Preview lalu print dari browser.'
              : 'Kirim langsung ke printer jaringan (TSPL)'
          }
          className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 disabled:bg-gray-300 disabled:cursor-not-allowed text-sm"
        >
          🚀 Send to Printer
          {isLoading && <span className="animate-spin">⏳</span>}
        </button>
      </div>

      {printerStatusError && (
        <div className="text-sm text-orange-700 bg-orange-50 border border-orange-100 rounded p-2">
          {printerStatusError}
        </div>
      )}
      {statusMessage && (
        <div className="text-sm text-green-700 bg-green-50 border border-green-100 rounded p-2">
          {statusMessage}
        </div>
      )}
      {errorMessage && (
        <div className="text-sm text-red-700 bg-red-50 border border-red-100 rounded p-2">
          {errorMessage}
        </div>
      )}
      {previewUrl && (
        <div className="text-xs text-gray-600">
          ✓ Label preview dibuka di tab baru
        </div>
      )}
        </div>
      </div>
    </div>
  );
}
