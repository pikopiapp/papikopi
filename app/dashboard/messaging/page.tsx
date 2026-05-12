'use client';

import React, { useState, useEffect } from 'react';
import { createClient } from '@supabase/supabase-js';
import { useAuthStore } from '@/lib/store/auth';
import { Loader2, Send, AlertCircle, Edit2, Trash2, X } from 'lucide-react';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL || '',
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
);

interface Announcement {
  id: string;
  title: string;
  description: string;
  created_by: string;
  created_at: string;
  is_active: boolean;
  creator?: { email: string; full_name: string };
}

interface PrivateMessage {
  id: string;
  sender_id: string;
  receiver_id: string;
  message: string;
  is_read: boolean;
  created_at: string;
  sender?: { email: string; full_name: string };
  receiver?: { email: string; full_name: string };
}

interface GroupChat {
  id: string;
  outlet_id: string;
  name: string;
  description: string;
  created_by: string;
  created_at: string;
  is_active: boolean;
}

interface GroupChatMessage {
  id: string;
  group_chat_id: string;
  user_id: string;
  message: string;
  created_at: string;
  user?: { email: string; full_name: string };
}

export default function MessagingPage() {
  const { user } = useAuthStore();
  const [activeTab, setActiveTab] = useState('announcements');
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  // Announcements
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [announcementForm, setAnnouncementForm] = useState({ title: '', description: '' });
  const [creatingAnnouncement, setCreatingAnnouncement] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [showDeleteConfirm, setShowDeleteConfirm] = useState<string | null>(null);

  // Private Messages
  const [privateMessages, setPrivateMessages] = useState<PrivateMessage[]>([]);
  const [recipients, setRecipients] = useState<any[]>([]);
  const [messageForm, setMessageForm] = useState({ recipient_id: '', message: '' });
  const [sendingMessage, setSendingMessage] = useState(false);

  // Group Chats
  const [groupChats, setGroupChats] = useState<GroupChat[]>([]);
  const [selectedChat, setSelectedChat] = useState<string>('');
  const [chatMessages, setChatMessages] = useState<GroupChatMessage[]>([]);
  const [groupMessageForm, setGroupMessageForm] = useState('');
  const [sendingGroupMessage, setSendingGroupMessage] = useState(false);

  useEffect(() => {
    loadData();
  }, [user]);

  const loadData = async () => {
    if (!user) return;
    setLoading(true);
    setError('');

    try {
      // Load announcements
      const { data: announcementsData, error: announcementsError } = await supabase
        .from('announcements')
        .select('*')
        .eq('is_active', true)
        .order('created_at', { ascending: false });

      if (announcementsError) throw announcementsError;
      setAnnouncements(announcementsData || []);

      // Load private messages - just get basic message data
      const { data: messagesData, error: messagesError } = await supabase
        .from('private_messages')
        .select('*')
        .or(`sender_id.eq.${user.id},receiver_id.eq.${user.id}`)
        .order('created_at', { ascending: false })
        .limit(50);

      if (messagesError) throw messagesError;
      setPrivateMessages(messagesData || []);

      // Load recipients (other users)
      const { data: usersData, error: usersError } = await supabase
        .from('users')
        .select('id, email, name')
        .neq('id', user.id)
        .limit(50);

      if (usersError) throw usersError;
      setRecipients(usersData || []);

      // Load group chats for user's outlet
      const { data: userOutlet, error: outletError } = await supabase
        .from('users')
        .select('outlet_id')
        .eq('id', user.id)
        .maybeSingle();

      if (outletError && outletError.code !== 'PGRST116') throw outletError;

      if (userOutlet?.outlet_id) {
        const { data: chatsData, error: chatsError } = await supabase
          .from('group_chats')
          .select('*')
          .eq('outlet_id', userOutlet.outlet_id)
          .eq('is_active', true)
          .order('created_at', { ascending: false });

        if (chatsError) throw chatsError;
        setGroupChats(chatsData || []);

        // Load messages for first group chat
        if (chatsData && chatsData.length > 0) {
          setSelectedChat(chatsData[0].id);
          await loadGroupChatMessages(chatsData[0].id);
        }
      }
    } catch (err) {
      console.error('Error loading data:', err);
      setError('Gagal memuat data');
    } finally {
      setLoading(false);
    }
  };

  const loadGroupChatMessages = async (chatId: string) => {
    try {
      const { data, error } = await supabase
        .from('group_chat_messages')
        .select(`
          *,
          user:user_id(email, full_name)
        `)
        .eq('group_chat_id', chatId)
        .order('created_at', { ascending: true })
        .limit(100);

      if (error) throw error;
      setChatMessages(data || []);
    } catch (err) {
      console.error('Error loading chat messages:', err);
    }
  };

  const handleCreateAnnouncement = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!user || !announcementForm.title.trim()) return;

    setCreatingAnnouncement(true);
    try {
      if (editingId) {
        // Update existing announcement
        const { error } = await supabase
          .from('announcements')
          .update({
            title: announcementForm.title,
            description: announcementForm.description,
          })
          .eq('id', editingId);

        if (error) throw error;
        setEditingId(null);
      } else {
        // Create new announcement
        const { error } = await supabase.from('announcements').insert([
          {
            title: announcementForm.title,
            description: announcementForm.description,
            created_by: user.id,
            is_active: true,
          },
        ]);

        if (error) throw error;
      }
      setAnnouncementForm({ title: '', description: '' });
      await loadData();
    } catch (err) {
      console.error('Error creating/updating announcement:', err);
      setError('Gagal membuat/mengubah pengumuman');
    } finally {
      setCreatingAnnouncement(false);
    }
  };

  const handleEditAnnouncement = (announcement: Announcement) => {
    setEditingId(announcement.id);
    setAnnouncementForm({
      title: announcement.title,
      description: announcement.description,
    });
  };

  const handleDeleteAnnouncement = async (announcementId: string) => {
    try {
      const { error } = await supabase
        .from('announcements')
        .delete()
        .eq('id', announcementId);

      if (error) throw error;
      setShowDeleteConfirm(null);
      await loadData();
    } catch (err) {
      console.error('Error deleting announcement:', err);
      setError('Gagal menghapus pengumuman');
    }
  };

  const handleCancelEdit = () => {
    setEditingId(null);
    setAnnouncementForm({ title: '', description: '' });
  };

  const handleSendPrivateMessage = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!user || !messageForm.recipient_id || !messageForm.message.trim()) return;

    setSendingMessage(true);
    try {
      const { error } = await supabase.from('private_messages').insert([
        {
          sender_id: user.id,
          receiver_id: messageForm.recipient_id,
          message: messageForm.message,
          is_read: false,
        },
      ]);

      if (error) throw error;
      setMessageForm({ recipient_id: '', message: '' });
      await loadData();
    } catch (err) {
      console.error('Error sending message:', err);
      setError('Gagal mengirim pesan');
    } finally {
      setSendingMessage(false);
    }
  };

  const handleSendGroupMessage = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!user || !selectedChat || !groupMessageForm.trim()) return;

    setSendingGroupMessage(true);
    try {
      const { error } = await supabase.from('group_chat_messages').insert([
        {
          group_chat_id: selectedChat,
          user_id: user.id,
          message: groupMessageForm,
        },
      ]);

      if (error) throw error;
      setGroupMessageForm('');
      await loadGroupChatMessages(selectedChat);
    } catch (err) {
      console.error('Error sending group message:', err);
      setError('Gagal mengirim pesan grup');
    } finally {
      setSendingGroupMessage(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <Loader2 className="h-8 w-8 animate-spin" />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-amber-50 to-orange-100 p-6">
      <div className="max-w-6xl mx-auto">
        <div className="mb-8">
          <h1 className="text-4xl font-bold text-gray-900 mb-2">Pesan & Pengumuman</h1>
          <p className="text-gray-600">Kelola pengumuman, pesan pribadi, dan chat grup</p>
        </div>

        {error && (
          <div className="mb-6 p-4 bg-red-50 border border-red-200 rounded-lg flex items-center gap-2 text-red-700">
            <AlertCircle className="h-5 w-5" />
            {error}
          </div>
        )}

        {/* Tabs */}
        <div className="mb-6">
          <div className="flex gap-0 border-b border-gray-300">
            {[
              { id: 'announcements', label: 'Pengumuman' },
              { id: 'private', label: 'Pesan Pribadi' },
              { id: 'groupchat', label: 'Chat Grup' },
            ].map((tab) => (
              <button
                key={tab.id}
                onClick={() => setActiveTab(tab.id)}
                className={`px-6 py-3 font-medium transition-all ${
                  activeTab === tab.id
                    ? 'border-b-2 border-orange-600 text-orange-600'
                    : 'text-gray-600 hover:text-gray-900'
                }`}
              >
                {tab.label}
              </button>
            ))}
          </div>
        </div>

        {/* ANNOUNCEMENTS TAB */}
        {activeTab === 'announcements' && (
          <div className="space-y-6">
            {/* Create Announcement Form */}
            <div className="bg-white rounded-lg shadow-md p-6">
              <h2 className="text-xl font-bold text-gray-900 mb-2">
                {editingId ? 'Edit Pengumuman' : 'Buat Pengumuman Baru'}
              </h2>
              <p className="text-gray-600 mb-4">
                {editingId
                  ? 'Perbarui informasi pengumuman'
                  : 'Bagikan informasi penting dengan semua pengguna'}
              </p>
              <form onSubmit={handleCreateAnnouncement} className="space-y-4">
                <input
                  type="text"
                  placeholder="Judul pengumuman"
                  value={announcementForm.title}
                  onChange={(e) =>
                    setAnnouncementForm({ ...announcementForm, title: e.target.value })
                  }
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent"
                />
                <textarea
                  placeholder="Deskripsi lengkap pengumuman"
                  value={announcementForm.description}
                  onChange={(e) =>
                    setAnnouncementForm({
                      ...announcementForm,
                      description: e.target.value,
                    })
                  }
                  rows={4}
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent resize-none"
                />
                <div className="flex gap-2">
                  <button
                    type="submit"
                    disabled={creatingAnnouncement}
                    className="flex-1 bg-orange-600 hover:bg-orange-700 disabled:bg-orange-400 text-white font-semibold py-2 rounded-lg transition-colors flex items-center justify-center gap-2"
                  >
                    {creatingAnnouncement && <Loader2 className="h-4 w-4 animate-spin" />}
                    {editingId ? 'Perbarui Pengumuman' : 'Kirim Pengumuman'}
                  </button>
                  {editingId && (
                    <button
                      type="button"
                      onClick={handleCancelEdit}
                      className="px-4 bg-gray-300 hover:bg-gray-400 text-gray-800 font-semibold rounded-lg transition-colors flex items-center gap-2"
                    >
                      <X className="h-4 w-4" />
                      Batal
                    </button>
                  )}
                </div>
              </form>
            </div>

            {/* Announcements List */}
            <div>
              <h3 className="text-lg font-semibold mb-4">Pengumuman Aktif</h3>
              {announcements.length === 0 ? (
                <div className="bg-white rounded-lg shadow-md p-8 text-center text-gray-500">
                  Belum ada pengumuman
                </div>
              ) : (
                <div className="space-y-4">
                  {announcements.map((announcement) => (
                    <div key={announcement.id}>
                      {/* Delete Confirmation Modal */}
                      {showDeleteConfirm === announcement.id && (
                        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
                          <div className="bg-white rounded-lg p-6 max-w-sm mx-4">
                            <h3 className="text-lg font-semibold text-gray-900 mb-4">
                              Hapus Pengumuman?
                            </h3>
                            <p className="text-gray-600 mb-6">
                              Anda yakin ingin menghapus pengumuman "{announcement.title}"? Tindakan ini tidak dapat dibatalkan.
                            </p>
                            <div className="flex gap-2 justify-end">
                              <button
                                onClick={() => setShowDeleteConfirm(null)}
                                className="px-4 py-2 bg-gray-300 hover:bg-gray-400 text-gray-800 rounded-lg transition-colors"
                              >
                                Batal
                              </button>
                              <button
                                onClick={() => handleDeleteAnnouncement(announcement.id)}
                                className="px-4 py-2 bg-red-600 hover:bg-red-700 text-white rounded-lg transition-colors"
                              >
                                Hapus
                              </button>
                            </div>
                          </div>
                        </div>
                      )}

                      <div className="bg-white rounded-lg shadow-md p-6 border-l-4 border-orange-500">
                        <div className="flex justify-between items-start mb-3">
                          <div className="flex-1">
                            <h4 className="text-xl font-semibold text-gray-900">
                              {announcement.title}
                            </h4>
                            <p className="text-sm text-gray-600">
                              oleh Admin •{' '}
                              {new Date(announcement.created_at).toLocaleDateString('id-ID')}
                            </p>
                          </div>
                          <div className="flex items-center gap-2">
                            <span className="inline-block px-3 py-1 bg-green-100 text-green-800 text-sm font-medium rounded">
                              Aktif
                            </span>
                          </div>
                        </div>
                        <p className="text-gray-700 mb-4">{announcement.description}</p>
                        <div className="flex gap-2 justify-end">
                          <button
                            onClick={() => handleEditAnnouncement(announcement)}
                            className="flex items-center gap-2 px-3 py-1 bg-blue-100 hover:bg-blue-200 text-blue-700 rounded transition-colors"
                          >
                            <Edit2 className="h-4 w-4" />
                            Edit
                          </button>
                          <button
                            onClick={() => setShowDeleteConfirm(announcement.id)}
                            className="flex items-center gap-2 px-3 py-1 bg-red-100 hover:bg-red-200 text-red-700 rounded transition-colors"
                          >
                            <Trash2 className="h-4 w-4" />
                            Hapus
                          </button>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>
          </div>
        )}

        {/* PRIVATE MESSAGES TAB */}
        {activeTab === 'private' && (
          <div className="space-y-6">
            {/* Send Private Message Form */}
            <div className="bg-white rounded-lg shadow-md p-6">
              <h2 className="text-xl font-bold text-gray-900 mb-2">Kirim Pesan Pribadi</h2>
              <p className="text-gray-600 mb-4">Komunikasi langsung dengan pengguna lain</p>
              <form onSubmit={handleSendPrivateMessage} className="space-y-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    Penerima
                  </label>
                  <select
                    value={messageForm.recipient_id}
                    onChange={(e) =>
                      setMessageForm({ ...messageForm, recipient_id: e.target.value })
                    }
                    className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                    required
                  >
                    <option value="">Pilih penerima...</option>
                    {recipients.map((recipient) => (
                      <option key={recipient.id} value={recipient.id}>
                        {recipient.name || recipient.email}
                      </option>
                    ))}
                  </select>
                </div>
                <textarea
                  placeholder="Tulis pesan Anda..."
                  value={messageForm.message}
                  onChange={(e) => setMessageForm({ ...messageForm, message: e.target.value })}
                  rows={4}
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent resize-none"
                />
                <button
                  type="submit"
                  disabled={sendingMessage}
                  className="w-full bg-blue-600 hover:bg-blue-700 disabled:bg-blue-400 text-white font-semibold py-2 rounded-lg transition-colors flex items-center justify-center gap-2"
                >
                  {sendingMessage ? (
                    <Loader2 className="h-4 w-4 animate-spin" />
                  ) : (
                    <Send className="h-4 w-4" />
                  )}
                  Kirim Pesan
                </button>
              </form>
            </div>

            {/* Messages List */}
            <div>
              <h3 className="text-lg font-semibold mb-4">Riwayat Pesan</h3>
              {privateMessages.length === 0 ? (
                <div className="bg-white rounded-lg shadow-md p-8 text-center text-gray-500">
                  Belum ada pesan
                </div>
              ) : (
                <div className="space-y-3 max-h-96 overflow-y-auto">
                  {privateMessages.map((msg) => (
                    <div
                      key={msg.id}
                      className={`p-4 rounded-lg border-l-4 ${
                        msg.sender_id === user?.id
                          ? 'bg-blue-50 border-l-blue-500'
                          : 'bg-green-50 border-l-green-500'
                      }`}
                    >
                      <div className="flex justify-between items-start mb-2">
                        <div>
                          {msg.sender_id === user?.id ? (
                            <p className="font-semibold text-blue-700">
                              Anda
                            </p>
                          ) : (
                            <p className="font-semibold text-green-700">
                              Dari pengguna lain
                            </p>
                          )}
                        </div>
                        {msg.is_read ? (
                          <span className="text-xs bg-green-100 text-green-800 px-2 py-1 rounded">
                            Dibaca
                          </span>
                        ) : (
                          <span className="text-xs bg-yellow-100 text-yellow-800 px-2 py-1 rounded">
                            Belum dibaca
                          </span>
                        )}
                      </div>
                      <p className="text-gray-700 mb-2">{msg.message}</p>
                      <p className="text-xs text-gray-500">
                        {new Date(msg.created_at).toLocaleString('id-ID')}
                      </p>
                    </div>
                  ))}
                </div>
              )}
            </div>
          </div>
        )}

        {/* GROUP CHAT TAB */}
        {activeTab === 'groupchat' && (
          <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
            {/* Group List */}
            <div className="bg-white rounded-lg shadow-md p-4">
              <h3 className="text-lg font-semibold mb-4">Grup Chat</h3>
              <div className="space-y-2 max-h-96 overflow-y-auto">
                {groupChats.length === 0 ? (
                  <p className="text-sm text-gray-500">Belum ada grup</p>
                ) : (
                  groupChats.map((chat) => (
                    <button
                      key={chat.id}
                      onClick={() => {
                        setSelectedChat(chat.id);
                        loadGroupChatMessages(chat.id);
                      }}
                      className={`w-full text-left p-3 rounded-lg transition-colors ${
                        selectedChat === chat.id
                          ? 'bg-orange-100 border-l-4 border-orange-600'
                          : 'hover:bg-gray-100'
                      }`}
                    >
                      <p className="font-medium text-gray-900">{chat.name}</p>
                      <p className="text-xs text-gray-600">{chat.description}</p>
                    </button>
                  ))
                )}
              </div>
            </div>

            {/* Chat Messages */}
            <div className="lg:col-span-3 bg-white rounded-lg shadow-md flex flex-col h-96">
              {selectedChat ? (
                <>
                  <div className="border-b p-4">
                    <h2 className="text-xl font-bold text-gray-900">
                      {groupChats.find((c) => c.id === selectedChat)?.name}
                    </h2>
                    <p className="text-sm text-gray-600">
                      {groupChats.find((c) => c.id === selectedChat)?.description}
                    </p>
                  </div>

                  <div className="flex-1 overflow-y-auto p-4">
                    {chatMessages.length === 0 ? (
                      <p className="text-center text-gray-500 py-8">
                        Belum ada pesan dalam grup ini
                      </p>
                    ) : (
                      <div className="space-y-4">
                        {chatMessages.map((msg) => (
                          <div
                            key={msg.id}
                            className={`flex ${
                              msg.user_id === user?.id ? 'justify-end' : 'justify-start'
                            }`}
                          >
                            <div
                              className={`max-w-xs px-4 py-2 rounded-lg ${
                                msg.user_id === user?.id
                                  ? 'bg-blue-500 text-white'
                                  : 'bg-gray-200 text-gray-900'
                              }`}
                            >
                              <p className="text-sm font-semibold">
                                {msg.user_id === user?.id ? 'Anda' : 'Pengguna lain'}
                              </p>
                              <p className="text-sm">{msg.message}</p>
                              <p className="text-xs opacity-70 mt-1">
                                {new Date(msg.created_at).toLocaleTimeString('id-ID')}
                              </p>
                            </div>
                          </div>
                        ))}
                      </div>
                    )}
                  </div>

                  <div className="border-t p-4">
                    <form onSubmit={handleSendGroupMessage} className="flex gap-2">
                      <textarea
                        placeholder="Tulis pesan..."
                        value={groupMessageForm}
                        onChange={(e) => setGroupMessageForm(e.target.value)}
                        rows={2}
                        className="flex-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-green-500 focus:border-transparent resize-none"
                      />
                      <button
                        type="submit"
                        disabled={sendingGroupMessage}
                        className="bg-green-600 hover:bg-green-700 disabled:bg-green-400 text-white font-semibold px-4 py-2 rounded-lg transition-colors flex items-center justify-center"
                      >
                        {sendingGroupMessage ? (
                          <Loader2 className="h-4 w-4 animate-spin" />
                        ) : (
                          <Send className="h-4 w-4" />
                        )}
                      </button>
                    </form>
                  </div>
                </>
              ) : (
                <div className="flex items-center justify-center flex-1 text-gray-500">
                  Pilih grup untuk memulai chat
                </div>
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
