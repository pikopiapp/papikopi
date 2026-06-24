import { redirect } from 'next/navigation';

export default function AdminRootPage() {
  // Redirect /admin to the admin database overview
  redirect('/admin/database');
}
