"use client";
import React, { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';

type SaleItem = Record<string, any>;

export default function SaleItemsPage() {
  const [items, setItems] = useState<SaleItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function load() {
      try {
        const { data: sessionData } = await supabase.auth.getSession();
        const token = sessionData?.session?.access_token;

        const res = await fetch('/api/admin/sale-items', {
          headers: token ? { Authorization: `Bearer ${token}` } : undefined,
        });
        const json = await res.json();
        if (res.ok) {
          setItems(json.sale_items || []);
        } else {
          setError(json.error || 'Failed to load');
        }
      } catch (e: any) {
        setError(e.message);
      } finally {
        setLoading(false);
      }
    }
    load();
  }, []);

  return (
    <div>
      <h2 className="text-xl font-medium mb-4">Sale Items</h2>
      {loading && <p>Loading…</p>}
      {error && <p className="text-red-600">{error}</p>}
      {!loading && !error && (
        <div className="overflow-auto bg-white rounded shadow">
          {(() => {
            if (items.length === 0) return <p className="p-4">No sale items found.</p>;

            // derive columns from union of keys across items
            const keys = Array.from(items.reduce((acc: Set<string>, it: any) => {
              Object.keys(it || {}).forEach(k => acc.add(k));
              return acc;
            }, new Set<string>()));

            return (
              <table className="min-w-full text-left">
                <thead className="bg-gray-100">
                  <tr>
                    {keys.map(k => (
                      <th key={k} className="px-4 py-2">{k}</th>
                    ))}
                  </tr>
                </thead>
                <tbody>
                  {items.map((row: any, idx: number) => (
                    <tr key={row.id ?? idx} className="border-t">
                      {keys.map(k => {
                        const v = row[k];
                        let display = '';
                        if (v == null) display = '';
                        else if (typeof v === 'number') display = Number(v).toLocaleString();
                        else if (typeof v === 'string' && !isNaN(Date.parse(v))) display = new Date(v).toLocaleString();
                        else if (typeof v === 'object') display = JSON.stringify(v);
                        else display = String(v);

                        return (
                          <td key={k} className="px-4 py-2 align-top whitespace-pre-wrap">{display}</td>
                        );
                      })}
                    </tr>
                  ))}
                </tbody>
              </table>
            );
          })()}
        </div>
      )}
    </div>
  );
}
