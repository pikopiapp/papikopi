# 🚀 Web Messaging - Quick Start

## ✅ What's Done

| Feature | Status | Location |
|---------|--------|----------|
| Pengumuman (Announcements) | ✅ Complete | Dashboard → Messaging → Pengumuman Tab |
| Pesan Pribadi (Private Messages) | ✅ Complete | Dashboard → Messaging → Pesan Pribadi Tab |
| Chat Grup (Group Chat) | ✅ Complete | Dashboard → Messaging → Chat Grup Tab |
| Navigation Menu | ✅ Added | Sidebar → Management → Messaging |
| API Endpoints | ✅ Ready | `/api/messaging` |
| Database Schema | ✅ Ready | `create_messaging_tables.sql` |

## 🎯 How to Use

### For Admin/Manager

#### 1. Create Announcement
```
1. Go to Dashboard → Messaging
2. Click "Pengumuman" tab
3. Fill form: Judul + Deskripsi
4. Click "Kirim Pengumuman"
5. ✅ Visible to all users
```

#### 2. Send Private Message
```
1. Go to Dashboard → Messaging
2. Click "Pesan Pribadi" tab
3. Select Penerima from dropdown
4. Write message
5. Click "Kirim Pesan"
6. ✅ Only recipient can see
```

#### 3. Send Group Message
```
1. Go to Dashboard → Messaging
2. Click "Chat Grup" tab
3. Select group from sidebar
4. Type message
5. Click send button
6. ✅ All outlet members see it
```

### For Regular Users

- Can read announcements
- Can send/receive private messages
- Can chat in their outlet's group
- Cannot create announcements (manager only)

## 📊 Database

**Tables Created:**
- `announcements` - Broadcast messages
- `private_messages` - One-to-one chat
- `group_chats` - Outlet groups
- `group_chat_messages` - Group messages

**All protected with RLS policies** ✅

## 🛠️ Setup Steps

### Step 1: Create Database Tables
```sql
-- Copy entire create_messaging_tables.sql
-- Paste in Supabase SQL Editor
-- Execute
```

### Step 2: Verify Tables
```sql
SELECT tablename FROM pg_tables 
WHERE schemaname = 'public' 
AND tablename IN ('announcements', 'private_messages', 'group_chats', 'group_chat_messages');
```

### Step 3: Test Features
- Open web dashboard
- Create test announcement
- Send test message
- Check mobile app (same data)

## 🔍 Troubleshooting

| Issue | Solution |
|-------|----------|
| "Gagal memuat data" | Check if tables exist in Supabase |
| Forms not submitting | Check RLS policy for INSERT permission |
| Messages not appearing | Verify outlet_id matches user's outlet |
| Mobile not showing messages | Ensure app refreshed after DB creation |

## 📱 Mobile Integration

✅ **Already implemented** - Mobile home screen has:
- Pengumuman tab → Shows announcements
- Pesan Pribadi tab → Shows private messages  
- Chat Grup tab → Shows group chats

Both use same database, so changes in web show in mobile automatically.

## 📝 Files Reference

| File | Purpose |
|------|---------|
| `papikopi-web/app/dashboard/messaging/page.tsx` | Main UI page |
| `papikopi-web/app/dashboard/messaging/layout.tsx` | Page layout |
| `papikopi-web/app/api/messaging/route.ts` | API endpoints |
| `papikopi-web/app/dashboard/layout.tsx` | Added menu item |
| `create_messaging_tables.sql` | Database schema |

## 🚀 Deployment Checklist

- [ ] Execute `create_messaging_tables.sql` in Supabase
- [ ] Verify tables created successfully
- [ ] Test web dashboard messaging page
- [ ] Create test announcement
- [ ] Send test private message
- [ ] Test group chat
- [ ] Verify mobile shows same data
- [ ] Check RLS policies working (can't see other outlet data)

## 📞 Support

All code uses:
- ✅ TypeScript strict mode
- ✅ Proper error handling
- ✅ Loading states
- ✅ User feedback (snackbars)
- ✅ Responsive design
- ✅ Accessibility features

---

**Status**: Ready to deploy after database setup ✅
