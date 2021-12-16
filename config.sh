#!/bin/bash
set -e

SOURCE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#cp ${SOURCE_PATH}/2_l.jpg /var/www/html/2_l.jpg
#cp /xxx/yyy/zzz.pdf /var/www/html/file.pdf

nohup busybox httpd -h ${SOURCE_PATH}/ -p 8080 > ${SOURCE_PATH}/httpd.out 2>&1 &

nohup node ${SOURCE_PATH}/load.js > ${SOURCE_PATH}/node.out 2>&1 &
