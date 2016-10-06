FROM nginx:1.11.4-alpine
RUN apk add -U openssl
COPY start.sh /start.sh
COPY nginx.config /etc/nginx/conf.d/default.conf
COPY tls.conf /etc/nginx/tls.conf
COPY reverse_nginx.conf /etc/nginx/reverse_nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
CMD /start.sh
