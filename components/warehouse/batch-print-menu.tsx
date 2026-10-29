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

  return (
    <div className="flex gap-1 md:gap-2">
      {/* Label already contains the batch QR code; this is the only print entry point. */}
      <button
        onClick={handlePrintLabel}
        className="flex items-center gap-1 px-2 md:px-3 py-1 text-xs md:text-sm bg-blue-500 hover:bg-blue-600 text-white rounded transition whitespace-nowrap"
        title="Cetak label + QR code untuk batch ini"
      >
        🖨️ <span className="hidden md:inline">Label / QR</span>
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
          onClose={() => setShowPrintDialog(false)}
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
