import { useState } from 'react';

interface PrintLabelProps {
  productId: string;
  productName: string;
  batch: string;
  productionDate: string;
  expiryDate?: string;
  quantity?: number; // Number of labels to print (default: 1)
}

export function PrintLabelDialog({
  productId,
  productName,
  batch,
  productionDate,
  expiryDate,
  quantity = 1,
}: PrintLabelProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [previewUrl, setPreviewUrl] = useState<string | null>(null);
  const [printQuantity, setPrintQuantity] = useState(quantity);

  const handlePrint = async () => {
    setIsLoading(true);
    try {
      const response = await fetch('/api/labels/print', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          product_name: productName,
          product_id: productId,
          batch,
          production_date: productionDate,
          expiry_date: expiryDate,
          quantity: printQuantity, // Send quantity
        }),
      });

      if (!response.ok) throw new Error('Failed to generate label');

      const html = await response.text();
      const blob = new Blob([html], { type: 'text/html' });
      const url = URL.createObjectURL(blob);
      setPreviewUrl(url);

      // Open in new window for printing
      const printWindow = window.open(url, '_blank');
      if (printWindow) {
        printWindow.addEventListener('load', () => {
          setTimeout(() => {
            printWindow.print();
          }, 250);
        });
      }
    } catch (error) {
      console.error('❌ Error printing label:', error);
      alert('Gagal membuat label');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="flex flex-col gap-3">
      <div className="flex items-center gap-2">
        <label className="text-sm font-medium">Jumlah Label:</label>
        <input
          type="number"
          min="1"
          max="999"
          value={printQuantity}
          onChange={(e) => setPrintQuantity(Math.max(1, parseInt(e.target.value) || 1))}
          className="w-16 px-2 py-1 border rounded text-sm"
        />
      </div>

      <button
        onClick={handlePrint}
        disabled={isLoading}
        className="flex items-center justify-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:bg-gray-400 text-sm"
      >
        🖨️ Print {printQuantity} {printQuantity === 1 ? 'Label' : 'Labels'}
        {isLoading && <span className="animate-spin">⏳</span>}
      </button>

      {previewUrl && (
        <div className="text-xs text-gray-600">
          ✓ Label preview dibuka di tab baru
        </div>
      )}
    </div>
  );
}
