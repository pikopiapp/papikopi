// GET /api/showcase/[showcase_location_id]/daily-report
// Get showcase daily report

import { NextRequest, NextResponse } from 'next/server';
import {
  supabase,
  getAuthUser,
  errorResponse,
} from '@/lib/showcase-utils';

interface RouteContext {
  params: {
    showcase_location_id: string;
  };
}

export async function GET(request: NextRequest, { params }: RouteContext) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { showcase_location_id } = params;
    const { searchParams } = new URL(request.url);
    const date = searchParams.get('date');

    if (!showcase_location_id) {
      return NextResponse.json(
        errorResponse('showcase_location_id harus diisi'),
        { status: 400 }
      );
    }

    const reportDate = date ? new Date(date) : new Date();
    const dateString = reportDate.toISOString().split('T')[0];

    const { data, error } = await supabase
      .from('showcase_daily_reports')
      .select('*')
      .eq('showcase_location_id', parseInt(showcase_location_id))
      .eq('report_date', dateString)
      .single();

    if (error && error.code !== 'PGRST116') {
      throw error;
    }

    return NextResponse.json(
      {
        success: true,
        data: data || null,
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';

    console.error('Error:', error);
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch daily report'),
      { status: 500 }
    );
  }
}
