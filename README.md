# 🦉 Odoo on Render (Self-Hosted Template)

Deploy Odoo instantly on Render with PostgreSQL and persistent storage.

## 🚀 One-Click Deploy

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

## 📋 What this does
- Deploys Odoo (Dockerized)
- Sets up a managed PostgreSQL database
- Mounts a 5GB persistent disk for filestore
- Automatically connects Odoo → Postgres
- Uses environment variables for credentials

## 🔧 Post-deploy setup
After Render builds:
1. Visit your app URL (Render gives one like `https://odoo.onrender.com`)
2. Log in with your new admin password (`ADMIN_PASSWD` env var)
3. Start creating your Odoo database and install modules!

## 🗄️ Persistent Data
- Database → stored in Render PostgreSQL
- File attachments → stored in mounted `/data/odoo` disk
