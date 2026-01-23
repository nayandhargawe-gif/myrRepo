FROM nginx:1.25-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy only static content
COPY html/ /usr/share/nginx/html/

RUN mkdir -p /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
