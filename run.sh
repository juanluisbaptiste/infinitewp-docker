#!/bin/bash
set -x

if  [ "$(ls -A /var/www/html)" == "" ]; then
  echo -e "The directory /var/www/html is empty, copying default install..."
  cp -rp /infinitewp/* /var/www/html/
  chown -R www-data:www-data /var/www/html/
  echo -e "Done."
fi

echo -e "Starting apache..."
/usr/local/bin/docker-php-entrypoint -DFOREGROUND
# ls -lt /tmp
while true; do sleep 15; done
