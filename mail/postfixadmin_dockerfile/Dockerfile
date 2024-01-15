FROM fpm-bookworm

RUN apt update && \
    apt install -y nginx php-curl php-gd php-mbstring php-zip php-mysql

COPY ./postfixadmin /var/www/postfixadmin

