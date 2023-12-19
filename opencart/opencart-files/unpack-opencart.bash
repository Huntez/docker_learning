#!/usr/bin/env bash

# unzip opencart
unzip opencart-4.0.2.3.zip

# moving main files to script root folder
mv opencart-4.0.2.3/upload .

# deleting unused folder
rm -rf opencart-4.0.2.3

# rename default configs
mv upload/config-dist.php upload/config.php
mv upload/admin/config-dist.php upload/admin/config.php

# set www-data user with uid-gid for alpine image, for debian image it's 32
sudo chown -R 82:82 ./upload