FROM nginx:stable-alpine
COPY start.sh /start.sh
COPY nginx.config /etc/nginx/conf.d/default.conf
EXPOSE 80
