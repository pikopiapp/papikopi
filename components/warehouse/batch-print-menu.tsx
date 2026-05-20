'use client';

import { useState } from 'react';
import { PrintLabelDialog } from '@/components/labels/print-label-dialog';

interface Batch {
  id: string;
  batch: string;
  product_id: string;
  product_name: string;
  production_date: string;
  expiry_date?: string;
  status: string;
  quantity: number;
}

interface BatchPrintMenuProps {
  batch: Batch;
}

/**
 * Menu untuk batch printing options
 * Bisa di-integrate ke batch list view
 */
export function BatchPrintMenu({ batch }: BatchPrintMenuProps) {
  const [showPrintDialog, setShowPrintDialog] = useState(false);

  const handlePrintLabel = () => {
    setShowPrintDialog(true);
  };

  const handlePrintQR = async () => {
    // Open QR preview in new window
    const qrData = JSON.stringify({
      product_id: batch.product_id,
      batch: batch.batch,
      production_date: batch.production_date,
      product: batch.product_name,
    });

    const url = `https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=${encodeURIComponent(qrData)}`;
    window.open(url, '_blank');
  };

  return (
    <div className="flex gap-2">
      {/* Print Label Button */}
      <button
        onClick={handlePrintLabel}
        className="flex items-center gap-1 px-3 py-1 text-sm bg-blue-500 hover:bg-blue-600 text-white rounded transition"
        title="Cetak label thermal untuk batch ini"
      >
        🖨️ Label
      </button>

      {/* Print QR Button */}
      <button
        onClick={handlePrintQR}
        className="flex items-center gap-1 px-3 py-1 text-sm bg-green-500 hover:bg-green-600 text-white rounded transition"
        title="Preview & print QR code"
      >
        📱 QR
      </button>

      {/* Print Dialog */}
      {showPrintDialog && (
        <PrintLabelDialog
          productId={batch.product_id}
          productName={batch.product_name}
          batch={batch.batch}
          productionDate={batch.production_date}
          expiryDate={batch.expiry_date}
          quantity={batch.quantity}
        />
      )}
    </div>
  );
}

/**
 * Example integration in batch list:
 * 
 * <table>
 *   <thead>
 *     <tr>
 *       <th>Batch</th>
 *       <th>Produk</th>
 *       <th>Tanggal</th>
 *       <th>Actions</th>
 *     </tr>
 *   </thead>
 *   <tbody>
 *     {batches.map(batch => (
 *       <tr key={batch.id}>
 *         <td>{batch.batch}</td>
 *         <td>{batch.product_name}</td>
 *         <td>{new Date(batch.production_date).toLocaleDateString('id-ID')}</td>
 *         <td>
 *           <BatchPrintMenu batch={batch} />
 *         </td>
 *       </tr>
 *     ))}
 *   </tbody>
 * </table>
 */
