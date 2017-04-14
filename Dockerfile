FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/*
COPY conf/nginx/ /etc/nginx/

EXPOSE 80 443
