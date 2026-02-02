# Architecture Notes

## Services
- **Web API (Node.js/Express)**: Handles role-based authentication, dashboards, and data entry flows.
- **Face Recognition Service (Python)**: Dedicated service for face enrollment and verification.
- **Database (PostgreSQL/MySQL)**: Stores users, academics, attendance, and finance records.

## Auth Flow
1. Role login starts with face verification.
2. Fallback to password-based login.
3. Password reset uses OTP delivered to registered email.
4. First-time login triggers face enrollment and secure embedding storage.

## Next Implementation Steps
- Implement JWT auth + role guards.
- Wire controllers to database queries.
- Connect to face service via HTTP with encrypted embeddings.
- Build frontend landing page + dashboards.
