// Showcase Inventory Dashboard Component
// Main dashboard untuk showcase management
// Date: May 2026

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useAuthStore } from '@/lib/store/auth';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Loader2, AlertCircle } from 'lucide-react';

interface InventorySummary {
  total_units: number;
  in_showcase: number;
  assigned_to_outlets: number;
  damaged: number;
  by_product: Record<string, number>;
}

interface DailyReport {
  total_in_showcase: number;
  assigned_today: number;
  returned_today: number;
  damaged_count: number;
  generated_at: string;
}

interface PendingReturn {
  id: number;
  product_unit_id: number;
  outlet_id: number;
  return_reason: string;
  return_date: string;
  outlets: { name: string };
  product_units: {
    products: { name: string };
  };
}

interface ShowcaseLocation {
  id: number;
  name: string;
}

export function ShowcaseInventoryDashboard() {
  const { user } = useAuthStore();
  const [showcaseLocationId] = useState<number>(1); // Default to Bandung showcase
  const [showcaseLocations] = useState<ShowcaseLocation[]>([
    { id: 1, name: 'Showcase Bandung' }
  ]);
  const [inventorySummary, setInventorySummary] = useState<InventorySummary | null>(
    null
  );
  const [dailyReport, setDailyReport] = useState<DailyReport | null>(null);
  const [pendingReturns, setPendingReturns] = useState<PendingReturn[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Fetch inventory data
  useEffect(() => {
    const fetchData = async () => {
      try {
        setLoading(true);
        setError(null);

        // Fetch real data from API endpoints
        const summaryRes = await axios.get(`/api/showcase/${showcaseLocationId}/inventory-summary`);
        if (summaryRes.data && summaryRes.data.data) {
          setInventorySummary(summaryRes.data.data);
        }

        const reportRes = await axios.get(`/api/showcase/${showcaseLocationId}/daily-report`);
        if (reportRes.data && reportRes.data.data) {
          setDailyReport(reportRes.data.data);
        }

        const returnsRes = await axios.get(`/api/showcase/returns/pending`);
        setPendingReturns(Array.isArray(returnsRes.data) ? returnsRes.data : returnsRes.data.data || []);
      } catch (err: unknown) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching data';
        setError(errorMessage);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    if (showcaseLocationId && user) {
      fetchData();
      const interval = setInterval(fetchData, 30000); // Refresh every 30s
      return () => clearInterval(interval);
    }
  }, [showcaseLocationId, user]);

  if (loading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6 p-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold">Showcase Inventory Management</h1>
        <p className="text-gray-600">
          Production → Showcase → Outlets
        </p>
      </div>

      {/* Error Alert */}
      {error && (
        <Alert variant="destructive">
          <AlertCircle className="h-4 w-4" />
          <AlertDescription>{error}</AlertDescription>
        </Alert>
      )}

      {/* Info Alert - Show if not authenticated */}
      {!user && (
        <Alert>
          <AlertCircle className="h-4 w-4" />
          <AlertDescription>
            You need to login to view showcase data. 
            {' '}<a href="/login" className="underline font-semibold">Login here</a>
          </AlertDescription>
        </Alert>
      )}

      {/* Location Selector */}
      <Card>
        <CardHeader>
          <CardTitle>Select Location</CardTitle>
        </CardHeader>
        <CardContent>
          <select
            value={showcaseLocationId}
            disabled
            className="w-full md:w-64 px-3 py-2 border rounded-md bg-gray-100"
          >
            {showcaseLocations.map((loc) => (
              <option key={loc.id} value={loc.id}>
                {loc.name}
              </option>
            ))}
          </select>
          <p className="text-sm text-gray-600 mt-2">Currently viewing: {showcaseLocations[0]?.name || 'Showcase Bandung'}</p>
        </CardContent>
      </Card>

      {/* Inventory Summary */}
      {inventorySummary && (
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Total Units</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{inventorySummary.total_units}</div>
              <p className="text-xs text-gray-600">All inventory</p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">In Showcase</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-green-600">
                {inventorySummary.in_showcase}
              </div>
              <p className="text-xs text-gray-600">Ready to assign</p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Assigned</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-blue-600">
                {inventorySummary.assigned_to_outlets}
              </div>
              <p className="text-xs text-gray-600">At outlets</p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Damaged</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-red-600">
                {inventorySummary.damaged}
              </div>
              <p className="text-xs text-gray-600">Need archival</p>
            </CardContent>
          </Card>
        </div>
      )}

      {/* Daily Report */}
      {dailyReport && (
        <Card>
          <CardHeader>
            <CardTitle>Daily Report - {new Date().toLocaleDateString()}</CardTitle>
            <CardDescription>Today activities</CardDescription>
          </CardHeader>
          <CardContent className="grid grid-cols-2 md:grid-cols-4 gap-4">
            <div>
              <p className="text-sm text-gray-600">In Showcase Today</p>
              <p className="text-2xl font-bold">{dailyReport.total_in_showcase}</p>
            </div>
            <div>
              <p className="text-sm text-gray-600">Assigned Today</p>
              <p className="text-2xl font-bold text-blue-600">
                {dailyReport.assigned_today}
              </p>
            </div>
            <div>
              <p className="text-sm text-gray-600">Returned Today</p>
              <p className="text-2xl font-bold text-orange-600">
                {dailyReport.returned_today}
              </p>
            </div>
            <div>
              <p className="text-sm text-gray-600">Damaged Today</p>
              <p className="text-2xl font-bold text-red-600">
                {dailyReport.damaged_count}
              </p>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Product Breakdown */}
      {inventorySummary?.by_product && (
        <Card>
          <CardHeader>
            <CardTitle>Inventory by Product</CardTitle>
            <CardDescription>Current products in showcase</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
              {Object.entries(inventorySummary.by_product).map(
                ([productName, count]) => (
                  <div
                    key={productName}
                    className="p-3 bg-gray-50 rounded-lg border"
                  >
                    <p className="text-sm font-medium">{productName}</p>
                    <p className="text-xl font-bold text-gray-900">{count}</p>
                  </div>
                )
              )}
            </div>
          </CardContent>
        </Card>
      )}

      {/* Pending Returns */}
      <Card>
        <CardHeader>
          <CardTitle>Pending Returns</CardTitle>
          <CardDescription>
            Awaiting condition check - {pendingReturns.length} items
          </CardDescription>
        </CardHeader>
        <CardContent>
          {pendingReturns.length > 0 ? (
            <div className="space-y-3">
              {pendingReturns.map((ret) => (
                <div
                  key={ret.id}
                  className="flex justify-between items-start p-3 bg-yellow-50 border border-yellow-200 rounded-lg"
                >
                  <div>
                    <p className="font-medium">
                      {ret.product_units.products.name}
                    </p>
                    <p className="text-sm text-gray-600">
                      From: {ret.outlets.name}
                    </p>
                    <p className="text-sm text-gray-600">
                      Reason: {ret.return_reason}
                    </p>
                    <p className="text-xs text-gray-500">
                      {new Date(ret.return_date).toLocaleDateString()}
                    </p>
                  </div>
                  <Badge variant="outline">Return #{ret.id}</Badge>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-gray-600">No pending returns</p>
          )}
        </CardContent>
      </Card>
    </div>
  );
}

export default ShowcaseInventoryDashboard;
