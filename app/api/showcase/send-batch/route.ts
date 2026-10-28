import { NextRequest, NextResponse } from 'next/server';
import { sendBatchToShowcase } from '@/lib/showcase/send-batch';

// Kept for existing callers; shares its implementation with /api/batch-to-showcase.
export async function POST(request: NextRequest) {
  try {
    const body = await request.json().catch(() => ({} as Record<string, unknown>));
    const result = await sendBatchToShowcase((body as { batch_id?: string }).batch_id);
    return NextResponse.json(result.body, { status: result.status });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Send batch error:', error);
    return NextResponse.json({ success: false, error: `Server error: ${errorMsg}` }, { status: 500 });
  }
}
