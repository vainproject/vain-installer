#!/usr/bin/env bash

wget https://github.com/vainproject/vain-cms/archive/master.zip

unzip master.zip -d working

cd working/vain-cms-master

composer install

zip -ry ../../vain-cms-latest.zip .

cd ../..

mv vain-cms-latest.zip /var/www/vhosts/dl.nevoxx.com/vain-cms-latest.zip

rm -rf working

rm master.zip
