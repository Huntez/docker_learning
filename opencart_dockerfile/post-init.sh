#!/bin/bash

path=/post-init.d

# unpack opencart files
bash $path/unpack-opencart.sh || exit 1

# start php-fpm
service php8.1-fpm start

# install opencart
bash $path/install-opencart.sh || exit 1

# start nginx
nginx -g 'daemon off;'