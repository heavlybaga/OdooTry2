# Use official Odoo base image (you can adjust version if needed)
FROM odoo:18.0

# Install extra system dependencies
USER root
RUN apt-get update && apt-get install -y \
    git curl nano build-essential libpq-dev \
    wkhtmltopdf && \    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy configuration and entrypoint
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Switch back to odoo user
USER odoo

# Expose Odoo's default port
EXPOSE 8069

ENTRYPOINT ["/entrypoint.sh"]
