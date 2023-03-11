#!/bin/sh

# Set the ownership and permissions of the Magento files
cd /var/www/html
#chown -R www-data:www-data generated var pub app/etc
chmod u+x bin/magento

# Run the php-fpm process
php-fpm