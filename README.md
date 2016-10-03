# docker-nginx
This repo is a Docker file to install nginx and use it as a reverse proxy.

```
docker stop nginx-proxy && \
docker rm nginx-proxy && \
docker run -d --restart=always --net nginx-net -v letsencrypt-cert:/etc/nginx/ssl:ro -p 80:80 -p 443:443 \
quay.io/vskilet/docker-nginx
```
