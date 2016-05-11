#!/bin/bash

sudo apt-get install postgresql libpq php php-fpm  php-curl php-cli php-pgsql php-gd php-mcrypt nginx

curl -O http://pqxx.org/download/software/libpqxx/libpqxx-4.0.1.tar.gz
tar xvfz libpqxx-4.0.1.tar.gz
cd libpqxx-4.0.1

echo " run ./configure "
echo "run make"
echo " run make install" 


