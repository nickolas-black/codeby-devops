# syntax=docker/dockerfile:1
FROM debian:11
WORKDIR /
RUN apt update
RUN apt install nginx -y
RUN mkdir -p /opt/www
COPY app/default /etc/nginx/sites-available/
COPY app/index.html /opt/www/
ENTRYPOINT ["nginx","-g","daemon off;"]
#ENTRYPOINT ["/usr/sbin/nginx -g", "daemon off;"]

