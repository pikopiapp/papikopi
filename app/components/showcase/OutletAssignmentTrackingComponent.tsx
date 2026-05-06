// Outlet Assignment Tracking Component
// Track produk assignment status per outlet
// Date: May 2026

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Alert, AlertDescription } from '@/components/ui/alert';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '@/components/ui/table';
import { Loader2, AlertCircle, Clock, CheckCircle, RotateCw } from 'lucide-react';

interface AssignmentStatus {
  product_unit_id: number;
  product_name: string;
  batch_id: number;
  status: string;
  assigned_date: string;
  received_date: string | null;
  days_at_outlet: number;
  return_status: string;
}

interface Outlet {
  id: number;
  name: string;
  location: string;
  is_active: boolean;
}

export function OutletAssignmentTrackingComponent() {
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [selectedOutletId, setSelectedOutletId] = useState<number | null>(null);
  const [assignments, setAssignments] = useState<AssignmentStatus[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // Fetch outlets
  useEffect(() => {
    const fetchOutlets = async () => {
      try {
        const response = await axios.get('/api/outlets');
        const outletData = Array.isArray(response.data) ? response.data : response.data.data || [];
        const activeOutlets = outletData.filter(
          (o: Outlet) => o.is_active
        );
        setOutlets(activeOutlets);
        if (activeOutlets.length > 0) {
          setSelectedOutletId(activeOutlets[0].id);
        }
      } catch (err) {
        console.error('Error fetching outlets:', err);
        setError('Error loading outlets');
      }
    };
    fetchOutlets();
  }, []);

  // Fetch assignments for selected outlet
  useEffect(() => {
    if (!selectedOutletId) return;

    const fetchAssignments = async () => {
      try {
        setLoading(true);
        setError(null);
        const response = await axios.get(
          `/api/showcase/outlets/${selectedOutletId}/assignments`
        );
        setAssignments(response.data.data || []);
      } catch (err: unknown) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching assignments';
        setError(errorMessage);
        setAssignments([]);
      } finally {
        setLoading(false);
      }
    };

    fetchAssignments();
    const interval = setInterval(fetchAssignments, 30000); // Refresh every 30s
    return () => clearInterval(interval);
  }, [selectedOutletId]);

  const getStatusIcon = (status: string) => {
    switch (status) {
      case 'assigned_to_outlet':
        return <Clock className="h-4 w-4 text-orange-500" />;
      case 'in_showcase':
        return <CheckCircle className="h-4 w-4 text-green-500" />;
      case 'damaged':
        return <AlertCircle className="h-4 w-4 text-red-500" />;
      default:
        return <RotateCw className="h-4 w-4 text-gray-500" />;
    }
  };

  const getReturnStatusColor = (returnStatus: string) => {
    switch (returnStatus) {
      case 'no_return':
        return 'bg-green-100 text-green-800';
      case 'pending':
        return 'bg-yellow-100 text-yellow-800';
      case 'reassigned_to_showcase':
        return 'bg-blue-100 text-blue-800';
      case 'archived_as_damaged':
        return 'bg-red-100 text-red-800';
      case 'credited_to_outlet':
        return 'bg-orange-100 text-orange-800';
      default:
        return 'bg-gray-100 text-gray-800';
    }
  };

  const getReturnStatusLabel = (returnStatus: string) => {
    switch (returnStatus) {
      case 'no_return':
        return 'Active';
      case 'pending':
        return 'Return Pending';
      case 'reassigned_to_showcase':
        return 'Returned';
      case 'archived_as_damaged':
        return 'Archived';
      case 'credited_to_outlet':
        return 'Credited';
      default:
        return returnStatus;
    }
  };

  const stats = {
    total: assignments.length,
    active: assignments.filter((a) => a.status === 'assigned_to_outlet').length,
    pending_return: assignments.filter(
      (a) => a.return_status === 'pending'
    ).length,
    returned: assignments.filter(
      (a) =>
        a.return_status === 'reassigned_to_showcase' ||
        a.return_status === 'archived_as_damaged'
    ).length,
  };

  if (loading && assignments.length === 0) {
    return (
      <div className="flex justify-center py-8">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Outlet Selector */}
      <Card>
        <CardHeader>
          <CardTitle>Select Outlet</CardTitle>
        </CardHeader>
        <CardContent>
          <Select
            value={selectedOutletId?.toString() || ''}
            onValueChange={(value: string) => setSelectedOutletId(parseInt(value))}
          >
            <SelectTrigger className="w-full md:w-64">
              <SelectValue placeholder="Select an outlet" />
            </SelectTrigger>
            <SelectContent>
              {outlets.map((outlet) => (
                <SelectItem key={outlet.id} value={outlet.id.toString()}>
                  {outlet.name}
                  {outlet.location && ` - ${outlet.location}`}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </CardContent>
      </Card>

      {/* Error Alert */}
      {error && (
        <Alert variant="destructive">
          <AlertCircle className="h-4 w-4" />
          <AlertDescription>{error}</AlertDescription>
        </Alert>
      )}

      {/* Statistics Cards */}
      {selectedOutletId && (
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Total Products</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{stats.total}</div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Active</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-green-600">
                {stats.active}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">
                Pending Return
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-yellow-600">
                {stats.pending_return}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Returned</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold text-blue-600">
                {stats.returned}
              </div>
            </CardContent>
          </Card>
        </div>
      )}

      {/* Assignments Table */}
      <Card>
        <CardHeader>
          <CardTitle>Product Assignments</CardTitle>
          <CardDescription>
            Current product status at{' '}
            {outlets.find((o) => o.id === selectedOutletId)?.name}
          </CardDescription>
        </CardHeader>
        <CardContent>
          {assignments.length > 0 ? (
            <div className="overflow-x-auto">
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Product</TableHead>
                    <TableHead>Unit #</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead>Days Here</TableHead>
                    <TableHead>Assigned Date</TableHead>
                    <TableHead>Received Date</TableHead>
                    <TableHead>Return Status</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {assignments.map((assignment) => (
                    <TableRow key={assignment.product_unit_id}>
                      <TableCell className="font-medium">
                        {assignment.product_name}
                      </TableCell>
                      <TableCell>#{assignment.product_unit_id}</TableCell>
                      <TableCell>
                        <div className="flex items-center gap-2">
                          {getStatusIcon(assignment.status)}
                          <span className="capitalize text-sm">
                            {assignment.status.replace(/_/g, ' ')}
                          </span>
                        </div>
                      </TableCell>
                      <TableCell>
                        <Badge variant="outline">
                          {assignment.days_at_outlet} days
                        </Badge>
                      </TableCell>
                      <TableCell className="text-sm">
                        {new Date(
                          assignment.assigned_date
                        ).toLocaleDateString()}
                      </TableCell>
                      <TableCell className="text-sm">
                        {assignment.received_date
                          ? new Date(
                              assignment.received_date
                            ).toLocaleDateString()
                          : '-'}
                      </TableCell>
                      <TableCell>
                        <Badge
                          className={getReturnStatusColor(
                            assignment.return_status
                          )}
                          variant="outline"
                        >
                          {getReturnStatusLabel(assignment.return_status)}
                        </Badge>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </div>
          ) : (
            <div className="text-center py-8">
              <Clock className="h-12 w-12 mx-auto text-gray-300 mb-2" />
              <p className="text-gray-600">
                Tidak ada assignment untuk outlet ini
              </p>
            </div>
          )}
        </CardContent>
      </Card>

      {/* Legend */}
      <Card>
        <CardHeader>
          <CardTitle className="text-sm">Legend</CardTitle>
        </CardHeader>
        <CardContent className="grid grid-cols-2 md:grid-cols-3 gap-3 text-sm">
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-orange-500"></div>
            <span>Assigned to Outlet</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-green-500"></div>
            <span>In Showcase</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-red-500"></div>
            <span>Damaged</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-yellow-500"></div>
            <span>Return Pending</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-blue-500"></div>
            <span>Returned</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-orange-500"></div>
            <span>Credited</span>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}

export default OutletAssignmentTrackingComponent;
