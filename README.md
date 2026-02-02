# Faculty & Student Management System

A role-based platform for managing academics, attendance, internal marks, and finance with face recognition authentication.

## Current Setup
- **Backend**: Express API skeleton with role-specific routes.
- **Database**: Baseline SQL schema for users, academics, attendance, and finance.
- **Documentation**: Architecture notes to guide implementation.

## Getting Started (Backend)
```bash
cd backend
npm install
npm run dev
```

Environment variables can be configured via `backend/.env.example`.

## Next Steps
- Implement authentication with JWT + OTP delivery.
- Integrate face recognition microservice.
- Build the frontend landing page and dashboards.
