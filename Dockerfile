FROM nginx:1.11.4-alpine
RUN apk add -U openssl
COPY start.sh /start.sh
COPY nginx.config /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD /start.sh
