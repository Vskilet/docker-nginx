FROM nginx:1.11.4-alpine
RUN apk add -U openssl
COPY start.sh /start.sh
COPY nginx.config /etc/nginx/conf.d/default.conf
COPY tls.conf /etc/nginx/tls.conf
CMD /start.sh
