'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';

interface ProductStatus {
  product_name: string;
  warehouse_batches: number;
  warehouse_stock: number;
  showcase_stock: number;
  allocated_stock: number;
  total_stock: number;
  last_batch_date: string;
}

interface WarehouseStats {
  totalWarehouseStock: number;
  totalShowcaseStock: number;
  totalAllocatedStock: number;
  totalBatches: number;
  activeProducts: number;
}

export default function WarehouseSummaryReport() {
  const [products, setProducts] = useState<ProductStatus[]>([]);
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState<WarehouseStats>({
    totalWarehouseStock: 0,
    totalShowcaseStock: 0,
    totalAllocatedStock: 0,
    totalBatches: 0,
    activeProducts: 0,
  });

  // initial fetch moved after function declaration

  async function fetchWarehouseData() {
    try {
      setLoading(true);

      // Fetch all product batches (warehouse inventory)
      const { data: batches, error: batchError } = await supabase
        .from('product_batches')
        .select('id, product_id, quantity, production_date')
        .in('status', ['ready', 'assigned']);

      if (batchError) throw batchError;

      // Fetch all products
      const { data: allProducts, error: productError } = await supabase
        .from('products')
        .select('id, name');

      if (productError) throw productError;

      // Fetch showcase products (showcase inventory and allocations)
      const { data: showcaseProducts, error: showcaseError } = await supabase
        .from('showcase_products')
        .select('product_name, total_quantity, allocated_quantity');

      if (showcaseError) throw showcaseError;

      // Create product map
      const productMap: { [key: string]: string } = {};
      if (allProducts) {
        for (const p of allProducts) {
          productMap[p.id] = p.name;
        }
      }

      // Group batches by product
      const warehouseMap: {
        [key: string]: {
          name: string;
          batches: number;
          quantity: number;
          lastDate: string;
        };
      } = {};

      if (batches) {
        for (const batch of batches) {
          const productName = productMap[batch.product_id] || 'Unknown';
          if (!warehouseMap[productName]) {
            warehouseMap[productName] = {
              name: productName,
              batches: 0,
              quantity: 0,
              lastDate: '',
            };
          }
          warehouseMap[productName].batches += 1;
          warehouseMap[productName].quantity += batch.quantity || 0;
          if (!warehouseMap[productName].lastDate || batch.production_date > warehouseMap[productName].lastDate) {
            warehouseMap[productName].lastDate = batch.production_date;
          }
        }
      }

      // Create showcase map
      const showcaseMap: {
        [key: string]: { total: number; allocated: number };
      } = {};

      if (showcaseProducts) {
        for (const showcase of showcaseProducts) {
          showcaseMap[showcase.product_name] = {
            total: showcase.total_quantity,
            allocated: showcase.allocated_quantity,
          };
        }
      }

      // Combine data
      const productList: ProductStatus[] = [];
      const allProductNames = new Set([
        ...Object.keys(warehouseMap),
        ...Object.keys(showcaseMap),
      ]);

      for (const productName of allProductNames) {
        const warehouse = warehouseMap[productName];
        const showcase = showcaseMap[productName];

        productList.push({
          product_name: productName,
          warehouse_batches: warehouse?.batches || 0,
          warehouse_stock: warehouse?.quantity || 0,
          showcase_stock: showcase?.total || 0,
          allocated_stock: showcase?.allocated || 0,
          total_stock: (warehouse?.quantity || 0) + (showcase?.total || 0),
          last_batch_date: warehouse?.lastDate || 'N/A',
        });
      }

      // Sort by total stock descending
      productList.sort((a, b) => b.total_stock - a.total_stock);

      setProducts(productList);

      // Calculate stats
      const totalWarehouseStock = productList.reduce((sum, p) => sum + p.warehouse_stock, 0);
      const totalShowcaseStock = productList.reduce((sum, p) => sum + p.showcase_stock, 0);
      const totalAllocatedStock = productList.reduce((sum, p) => sum + p.allocated_stock, 0);
      const totalBatches = productList.reduce((sum, p) => sum + p.warehouse_batches, 0);

      setStats({
        totalWarehouseStock,
        totalShowcaseStock,
        totalAllocatedStock,
        totalBatches,
        activeProducts: productList.length,
      });
    } catch (error) {
      console.error('Error fetching warehouse data:', error);
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    const t = setTimeout(() => {
      fetchWarehouseData();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Warehouse Summary</h1>
        <p className="text-gray-600">Ringkasan warehouse inventory & flow: Warehouse → Showcase → Outlets</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Warehouse Stock</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{stats.totalWarehouseStock}</p>
          <p className="text-sm text-gray-500 mt-1">units in batches</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Showcase Stock</h3>
          <p className="text-4xl font-bold text-purple-600 mt-2">{stats.totalShowcaseStock}</p>
          <p className="text-sm text-gray-500 mt-1">units displayed</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Allocated</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{stats.totalAllocatedStock}</p>
          <p className="text-sm text-gray-500 mt-1">to outlets</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Active Batches</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{stats.totalBatches}</p>
          <p className="text-sm text-gray-500 mt-1">products: {stats.activeProducts}</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-6 text-center text-gray-500">Loading warehouse data...</div>
        ) : products.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No warehouse data available</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Product</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Warehouse</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Batches</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Showcase</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Allocated</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Total</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Last Update</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {products.map((item, idx) => (
                <tr key={idx} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.product_name}</td>
                  <td className="px-6 py-4 text-gray-700 text-center">
                    <span className="bg-blue-100 text-blue-800 px-2 py-1 rounded text-sm">
                      {item.warehouse_stock} units
                    </span>
                  </td>
                  <td className="px-6 py-4 text-gray-700 text-center">
                    <span className="bg-gray-200 text-gray-800 px-2 py-1 rounded text-sm">
                      {item.warehouse_batches}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-gray-700 text-center">
                    <span className="bg-purple-100 text-purple-800 px-2 py-1 rounded text-sm">
                      {item.showcase_stock} units
                    </span>
                  </td>
                  <td className="px-6 py-4 text-gray-700 text-center">
                    <span className="bg-green-100 text-green-800 px-2 py-1 rounded text-sm">
                      {item.allocated_stock} units
                    </span>
                  </td>
                  <td className="px-6 py-4 font-bold text-gray-900">
                    {item.total_stock} units
                  </td>
                  <td className="px-6 py-4 text-sm text-gray-600">
                    {item.last_batch_date !== 'N/A' ? format(new Date(item.last_batch_date), 'yyyy-MM-dd') : 'N/A'}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
