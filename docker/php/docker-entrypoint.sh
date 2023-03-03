#!/bin/sh

# Set the ownership and permissions of the Magento files
RUN find /var/www/html -type f -exec chmod 644 {} \;
RUN find /var/www/html -type d -exec chmod 755 {} \;

RUN chown -R :www-data /var/www/html
RUN chmod u+x /var/www/html/bin/magento

# Run the php-fpm process
php-fpm