#!/bin/bash

path=/post-init.d

# unpack opencart files
bash $path/unpack-opencart.sh

# install opencart
bash $path/install-opencart.sh

# run nginx and php-fpm
bash $path/start-services.sh

# for test
tail -f /dev/null
