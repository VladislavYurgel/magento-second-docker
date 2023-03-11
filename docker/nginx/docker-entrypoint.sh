#!/bin/sh

# Set the ownership and permissions of the Magento files
cd /var/www/html
#chown -R www-data:www-data generated var pub app/etc
chmod u+x bin/magento

envsubst '' </templates/default.conf.template >/etc/nginx/nginx.conf

exec nginx -g 'daemon off;'