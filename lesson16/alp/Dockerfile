# syntax=docker/dockerfile:1
FROM alpine:latest
#WORKDIR ./app
RUN apk update
RUN apk add nginx
RUN mkdir -p /opt/www
COPY app/default.conf /etc/nginx/http.d/
COPY app/index.html /opt/www/
CMD ["nginx", "-g", "daemon off;"]

