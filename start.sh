[ -f /etc/letsencrypt/dhparam.pem ] || openssl dhparam -out /etc/letsencrypt/dhparam.pem 4096
nginx -g "daemon off;"
