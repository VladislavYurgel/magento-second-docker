# Use the official PHP 7.4 image as the base image
FROM php:7.4-fpm

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Install required PHP extensions and Apache modules
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libxml2-dev \
    libxslt1-dev \
    libzip-dev \
    libonig-dev \
    libwebp-dev \
    unzip \
    git \
    vim

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp;

RUN docker-php-ext-install -j$(nproc) \
    sockets \
    bcmath \
    gd \
    intl \
    mbstring \
    mysqli \
    opcache \
    pdo_mysql \
    soap \
    xsl \
    zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Creating entrypoint
COPY docker/php/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]