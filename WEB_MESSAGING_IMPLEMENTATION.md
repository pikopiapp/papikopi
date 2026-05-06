# Web Messaging System - Implementation Guide

Halaman messaging web telah dibuat lengkap dengan fitur pengumuman, pesan pribadi, dan group chat.

## 📂 File yang Dibuat

### 1. **[papikopi-web/app/dashboard/messaging/page.tsx](papikopi-web/app/dashboard/messaging/page.tsx)**
Main messaging page dengan 3 tabs:
- **Pengumuman (Announcements)**: Buat dan lihat pengumuman untuk semua pengguna
- **Pesan Pribadi (Private Messages)**: Komunikasi langsung antar pengguna
- **Chat Grup (Group Chat)**: Diskusi per outlet

**Features:**
- Real-time loading dari Supabase
- Form untuk membuat pengumuman (admin/manager only)
- Form untuk mengirim pesan pribadi
- Group chat dengan real-time messaging
- Status pembacaan pesan (read/unread)
- Responsive design dengan Tailwind CSS
- Loading states dan error handling
- ScrollArea untuk long lists

### 2. **[papikopi-web/app/dashboard/messaging/layout.tsx](papikopi-web/app/dashboard/messaging/layout.tsx)**
Layout wrapper untuk messaging page dengan metadata

### 3. **[papikopi-web/app/api/messaging/route.ts](papikopi-web/app/api/messaging/route.ts)**
API endpoints untuk messaging:
- `GET?action=announcements` - Fetch semua pengumuman aktif
- `GET?action=messages&userId=X` - Fetch pesan pribadi user
- `GET?action=group-chats&userId=X` - Fetch group chats untuk outlet user
- `POST action=create-announcement` - Buat pengumuman baru
- `POST action=send-message` - Kirim pesan pribadi
- `POST action=send-group-message` - Kirim pesan ke group chat
- `POST action=group-chat-messages` - Fetch pesan dari group chat

### 4. **Navigation Update**
Menu "Messaging" ditambahkan ke sidebar dashboard di Management section

## 🎯 Fitur Utama

### Pengumuman
```
✅ Admin/Manager dapat membuat pengumuman
✅ Semua pengguna dapat melihat
✅ Tampil dengan timestamp dan nama pembuat
✅ Status "Aktif" dengan badge
✅ Supported HTML rich text di deskripsi
```

### Pesan Pribadi
```
✅ Pilih recipient dari dropdown (all users except self)
✅ Kirim pesan dengan UI form
✅ Lihat riwayat pesan masuk dan keluar
✅ Badge "Dibaca" / "Belum dibaca"
✅ Timestamp untuk setiap pesan
✅ Color coding: biru untuk outgoing, hijau untuk incoming
```

### Group Chat
```
✅ Sidebar dengan list semua grup untuk outlet user
✅ Main area dengan chat messages
✅ Real-time message input
✅ Message bubbles dengan user info
✅ Timestamp untuk setiap pesan
✅ Auto-load messages saat group dipilih
✅ Only members dari outlet dapat see/send
```

## 🔐 Security (via RLS Policies)

**Announcements:**
- ✅ Semua user dapat melihat (is_active = true)
- ✅ Only admin/manager dapat membuat

**Private Messages:**
- ✅ User hanya melihat pesan mereka (sender atau receiver)
- ✅ User hanya bisa send sebagai sender

**Group Chats & Messages:**
- ✅ User hanya akses grup dari outlet mereka
- ✅ User hanya bisa view/send messages di grup mereka

## 🎨 UI/UX Details

- **Color Scheme**: Orange/amber theme matching app brand
- **Layout**: Tab-based for easy navigation
- **Messages**: Chat bubble style (different colors for self/others)
- **Forms**: Clean input fields dengan labels
- **Status**: Loading spinners, success/error messages
- **Empty States**: Helpful messages when no data
- **Responsive**: Works on desktop (mobile responsive too)

## ⚙️ Required Setup

1. **Database Tables**: Already provided in `create_messaging_tables.sql`
   - Execute this in Supabase SQL editor first

2. **RLS Policies**: Included in SQL file
   - Automatically enabled when tables created

3. **Indexes**: Included for performance
   - announcements, private_messages, group_chats, group_chat_messages

## 📱 Next Steps

1. **Execute SQL Schema** in Supabase
   ```sql
   -- Run create_messaging_tables.sql
   ```

2. **Test in Web Dashboard**
   - Go to Dashboard → Messaging
   - Create test announcement
   - Send private message
   - Test group chat

3. **Test Mobile App** (Already implemented)
   - Home screen shows announcements, private messages, group chat
   - Tabs display same data from database
   - Refresh button works

## 🚀 Performance Optimizations

- Indexes on `created_at`, `outlet_id`, `user_id` for fast queries
- LIMIT 50-100 for message lists (avoid loading all data)
- ScrollArea components for long lists
- Lazy loading on tab switch

## 🐛 Error Handling

- Try-catch blocks on all DB operations
- Error messages displayed to user
- Fallback to empty lists if tables not exist yet
- Console logging for debugging

## 📊 Data Flow

```
UI Form Input
    ↓
onClick Handler
    ↓
Supabase Insert (with RLS check)
    ↓
Reload Data
    ↓
UI Updates
```

## 🔗 Integration with Mobile App

**Same Database, Same Features:**
- Mobile home screen shows announcements, messages, group chat
- Web dashboard for admin/manager to manage communications
- Real-time sync via Supabase
- Both use same RLS policies

## ✨ Future Enhancements

- [ ] Real-time subscriptions (live updates)
- [ ] Message search functionality
- [ ] Message pagination
- [ ] Message editing/deletion
- [ ] File attachments in messages
- [ ] Typing indicators in group chat
- [ ] Message reactions/emojis
- [ ] Read receipts for group chat
- [ ] Message pinning
- [ ] User online status

---

**Status**: ✅ **READY FOR DEPLOYMENT**
- All files created
- Navigation updated
- Database schema provided
- API endpoints ready
- Error handling implemented

**Next Action**: Execute `create_messaging_tables.sql` in Supabase → Test in web dashboard
