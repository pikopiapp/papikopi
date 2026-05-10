import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

const SERVER_START_TIME = new Date();

export async function GET(request: NextRequest) {
  try {
    const startTime = Date.now();
    
    console.log('🔍 Checking system status...');
    
    // Test database connection
    let database_status = 'disconnected';
    let active_users = 0;
    let recent_error_count = 0;

    try {
      const { data: dbTest, error: dbError } = await supabase
        .from('outlets')
        .select('count(*)', { count: 'exact' })
        .limit(1);
      
      database_status = dbError ? 'disconnected' : 'connected';
      console.log('✅ Database status:', database_status);
    } catch (dbErr) {
      console.error('❌ Database error:', dbErr);
      database_status = 'disconnected';
    }

    // Calculate uptime
    const uptime_ms = Date.now() - SERVER_START_TIME.getTime();
    const uptime_hours = Math.floor(uptime_ms / (1000 * 60 * 60));

    // Try to get active users from sessions
    try {
      const { data: sessions, error: sessionsError } = await supabase
        .from('sessions')
        .select('id', { count: 'exact' })
        .gte('expires_at', new Date().toISOString())
        .limit(1000);

      active_users = sessionsError ? 0 : (sessions?.length || 0);
      console.log('✅ Active users:', active_users);
    } catch (sessErr) {
      console.warn('⚠️ Could not fetch sessions (table may not exist):', sessErr);
    }

    // Try to get recent errors
    try {
      const { data: recentErrors, error: errorsError } = await supabase
        .from('audit_logs')
        .select('id', { count: 'exact' })
        .eq('action', 'error')
        .gte('created_at', new Date(Date.now() - 60000).toISOString())
        .limit(1000);

      recent_error_count = errorsError ? 0 : (recentErrors?.length || 0);
      console.log('✅ Recent errors:', recent_error_count);
    } catch (errErr) {
      console.warn('⚠️ Could not fetch audit logs (table may not exist):', errErr);
    }

    // Measure response time
    const response_time_ms = Date.now() - startTime;

    // Estimate requests per minute (mock for now)
    const requests_per_minute = 250 + Math.floor(Math.random() * 100);

    // Calculate error rate
    const error_rate = recent_error_count > 0 ? (recent_error_count / (requests_per_minute / 60)) * 100 : 0;

    const result = {
      api_status: 'online',
      database_status,
      uptime_hours,
      response_time_ms,
      active_users,
      requests_per_minute,
      error_rate: parseFloat(error_rate.toFixed(2)),
      last_check: new Date().toISOString(),
      timestamp: Date.now(),
    };
    
    console.log('✅ System status result:', result);
    return NextResponse.json(result);
  } catch (error) {
    console.error('❌ Error fetching system status:', error);
    return NextResponse.json(
      {
        api_status: 'degraded',
        database_status: 'disconnected',
        uptime_hours: 0,
        response_time_ms: 0,
        active_users: 0,
        requests_per_minute: 0,
        error_rate: 100,
        last_check: new Date().toISOString(),
        error: 'Gagal mengambil status sistem',
      },
      { status: 200 }
    );
  }
}
