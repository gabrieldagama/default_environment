FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/*
COPY conf/nginx/ /etc/nginx/

RUN apt-get update
RUN apt-get install curl php5-cli git -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 80 443
