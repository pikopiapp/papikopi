# Papikopi Dashboard

Platform manajemen outlet kopi dengan dashboard analytics dan inventory management.

## Deployment
- Live URL: https://papikopi.vercel.app
- Deployments: Automatic via GitHub integration

## Recent Fixes
- 2026-06-16: Fix for `sale_items` missing in `/api/sales/by-outlet` responses — batch `.in('sale_id', [...])` calls to avoid Supabase "Bad Request" when querying many IDs. Added opt-in debug via `?debug=1` for diagnostics.

Notes: remove debug logging before long-term production deployment.
