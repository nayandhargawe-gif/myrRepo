FROM nginx:1.25-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# ❌ DO NOT copy nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf   ← remove this

# Copy only static content
COPY html/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
