# Quran Radio Backend

Production-ready Node.js (Express) backend for Quran Radio app.

## Features
- RESTful API
- PostgreSQL database
- JWT authentication
- Role-based access (user, producer)
- Program, message, notification management
- Analytics endpoints
- FCM integration for push notifications
- Secure, scalable, and documented

## Setup
1. Install dependencies: `npm install`
2. Configure environment variables (see `.env.example`)
3. Run database migrations: `npm run migrate`
4. Start server: `npm start`

## API Documentation
- Swagger docs available at `/api/docs` after running the server.

## Folder Structure
- `src/` - Main source code
- `migrations/` - Database migrations
- `.github/` - Copilot instructions

## Deployment
- Ready for Docker, cloud, or on-premise deployment

---
Replace placeholders and secrets before production use.
