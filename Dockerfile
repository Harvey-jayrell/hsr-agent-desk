FROM nginx:1.27-alpine

# Default port for Render (overridden automatically by Render's PORT env var)
ENV PORT=10000

# Remove default Nginx config and copy our dynamic PORT template
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Copy the app
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 10000
