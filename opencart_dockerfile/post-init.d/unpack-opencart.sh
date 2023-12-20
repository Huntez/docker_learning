#!/bin/bash

path=/opt/opencart

# unzip opencart
unzip -qq $path/opencart-4.0.2.3.zip -d $path/

# moving main files to script root folder
mv $path/opencart-4.0.2.3/upload $path/

# deleting unused folder
rm -rf $path/opencart-4.0.2.3

# rename default configs
mv $path/upload/config-dist.php $path/upload/config.php
mv $path/upload/admin/config-dist.php $path/upload/admin/config.php

# set www-data user with uid-gid
chown -R 33:33 $path