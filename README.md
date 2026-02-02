# Faculty & Student Management System

A role-based platform for managing academics, attendance, internal marks, and finance with face recognition authentication.

## Current Setup
- **Backend**: Express API skeleton with role-specific routes.
- **Database**: Baseline SQL schema for users, academics, attendance, and finance.
- **Frontend**: Static landing page scaffold in `frontend/`.
- **Documentation**: Architecture notes to guide implementation.

## Getting Started (Backend)
```bash
cd backend
npm install
npm run dev
```

## Getting Started (Frontend)
Open `frontend/index.html` in a browser to view the landing page.

Environment variables can be configured via `backend/.env.example`.

## Custom Domain (GitHub Pages)
If the frontend will be hosted on GitHub Pages, follow the custom domain guide before adding a `CNAME` file.
See [docs/custom-domain.md](docs/custom-domain.md).

## Next Steps
- Implement authentication with JWT + OTP delivery.
- Integrate face recognition microservice.
- Build the frontend landing page and dashboards.
