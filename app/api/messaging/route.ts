import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase-admin';

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const action = searchParams.get('action');
    const userId = searchParams.get('userId');

    if (action === 'announcements') {
      const { data, error } = await supabase
        .from('announcements')
        .select(`
          *,
          creator:created_by(email, full_name)
        `)
        .eq('is_active', true)
        .order('created_at', { ascending: false })
        .limit(20);

      if (error) throw error;
      return NextResponse.json(data);
    }

    if (action === 'messages' && userId) {
      const { data, error } = await supabase
        .from('private_messages')
        .select(`
          *,
          sender:sender_id(email, full_name),
          receiver:receiver_id(email, full_name)
        `)
        .or(`sender_id.eq.${userId},receiver_id.eq.${userId}`)
        .order('created_at', { ascending: false })
        .limit(50);

      if (error) throw error;
      return NextResponse.json(data);
    }

    if (action === 'group-chats' && userId) {
      // Get user's outlet
      const { data: userOutlet, error: outletError } = await supabase
        .from('users')
        .select('outlet_id')
        .eq('id', userId)
        .single();

      if (outletError) throw outletError;

      const { data, error } = await supabase
        .from('group_chats')
        .select('*')
        .eq('outlet_id', userOutlet?.outlet_id)
        .eq('is_active', true)
        .order('created_at', { ascending: false });

      if (error) throw error;
      return NextResponse.json(data);
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 });
  } catch (error) {
    console.error('Messaging API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const { action, ...data } = await request.json();

    if (action === 'create-announcement') {
      const { error } = await supabase.from('announcements').insert([
        {
          title: data.title,
          description: data.description,
          created_by: data.created_by,
          is_active: true,
        },
      ]);

      if (error) throw error;
      return NextResponse.json({ success: true });
    }

    if (action === 'send-message') {
      const { error } = await supabase.from('private_messages').insert([
        {
          sender_id: data.sender_id,
          receiver_id: data.receiver_id,
          message: data.message,
          is_read: false,
        },
      ]);

      if (error) throw error;
      return NextResponse.json({ success: true });
    }

    if (action === 'send-group-message') {
      const { error } = await supabase.from('group_chat_messages').insert([
        {
          group_chat_id: data.group_chat_id,
          user_id: data.user_id,
          message: data.message,
        },
      ]);

      if (error) throw error;
      return NextResponse.json({ success: true });
    }

    if (action === 'group-chat-messages') {
      const { data: messages, error } = await supabase
        .from('group_chat_messages')
        .select(`
          *,
          user:user_id(email, full_name)
        `)
        .eq('group_chat_id', data.group_chat_id)
        .order('created_at', { ascending: true })
        .limit(100);

      if (error) throw error;
      return NextResponse.json(messages);
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 });
  } catch (error) {
    console.error('Messaging API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const { action, ...data } = await request.json();

    if (action === 'update-announcement') {
      const { error } = await supabase
        .from('announcements')
        .update({
          title: data.title,
          description: data.description,
        })
        .eq('id', data.id);

      if (error) throw error;
      return NextResponse.json({ success: true });
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 });
  } catch (error) {
    console.error('Messaging API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const action = searchParams.get('action');
    const announcementId = searchParams.get('announcementId');

    if (action === 'delete-announcement' && announcementId) {
      const { error } = await supabase
        .from('announcements')
        .delete()
        .eq('id', announcementId);

      if (error) throw error;
      return NextResponse.json({ success: true });
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 });
  } catch (error) {
    console.error('Messaging API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
