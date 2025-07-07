FROM nginx:alpine
ARG NGINX_CONF

# Eliminar la configuración por defecto que puede interferir
RUN rm -f /etc/nginx/conf.d/default.conf

COPY ${NGINX_CONF} /etc/nginx/nginx.conf

RUN mkdir -p /var/log/nginx

EXPOSE 80 443 8080

CMD ["nginx", "-g", "daemon off;"]
