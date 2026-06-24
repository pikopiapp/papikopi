import React from 'react';

export const metadata = {
  title: 'Database',
};

export default function DatabaseLayout({ children }: { children: React.ReactNode }) {
  return (
    <div>
      <header className="mb-6">
        <h1 className="text-2xl font-bold">Database</h1>
      </header>
      <section>{children}</section>
    </div>
  );
}
