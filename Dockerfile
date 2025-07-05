FROM nginx:alpine
ARG NGINX_CONF=nginx.conf

COPY ${NGINX_CONF} /etc/nginx/nginx.conf

RUN mkdir -p /var/log/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
