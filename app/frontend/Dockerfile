FROM nginx:1.27-alpine3.21
RUN apk update && apk upgrade
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
EXPOSE 80