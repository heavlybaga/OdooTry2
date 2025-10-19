#!/bin/bash
set -e

# Wait for Postgres to be ready
echo "⏳ Waiting for Postgres..."
until pg_isready -h "$PGHOST" -p "$PGPORT" -U "$PGUSER"; do
  sleep 2
done
echo "✅ Postgres is ready!"

# Ensure persistent filestore directory
mkdir -p /data/odoo
chown -R odoo:odoo /data

# Run Odoo
exec odoo -c /etc/odoo/odoo.conf
