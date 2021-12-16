#!/bin/bash
set -e

SOURCE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#cp ${SOURCE_PATH}/index.html /var/www/html/index.nginx-debian.html
#cp ${SOURCE_PATH}/2_l.jpg /var/www/html/2_l.jpg

#nohup busybox httpd -h ${SOURCE_PATH}/ -p 0.0.0.0:8082 > ${SOURCE_PATH}/httpd.out 2>&1 &

cd ${SOURCE_PATH}
nohup node ./load.js > ${SOURCE_PATH}/node.out 2>&1 &
