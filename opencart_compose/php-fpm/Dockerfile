FROM php:fpm-alpine3.19

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd curl iconv mbstring zlib zip mysqli openssl

EXPOSE 9000

CMD ["php-fpm"]
