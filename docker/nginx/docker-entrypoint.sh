#!/bin/sh

# Set the ownership and permissions of the Magento files
cd /var/www/html
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data . # Ubuntu
chmod u+x bin/magento

envsubst '' </templates/default.conf.template >/etc/nginx/nginx.conf

exec nginx -g 'daemon off;'