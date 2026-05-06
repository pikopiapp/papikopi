'use client';

import React from 'react';
import { OutletAssignmentTrackingComponent } from '@/app/components/showcase/OutletAssignmentTrackingComponent';

export default function TrackingPage() {
  return (
    <div className="p-6 space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Track Outlet Assignments</h1>
        <p className="text-gray-600">Monitor product assignment status at each outlet</p>
      </div>
      <OutletAssignmentTrackingComponent />
    </div>
  );
}
