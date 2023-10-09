FROM php:8.1-fpm

# Installing dependencies for the PHP modules
RUN apt-get update && \
    apt-get install -y zip libzip-dev libpng-dev libcurl4-openssl-dev libssl-dev gettext

# Installing additional PHP modules
RUN docker-php-ext-install mysqli pdo pdo_mysql gd zip curl gettext

# Enable the installed extensions
RUN docker-php-ext-enable mysqli pdo pdo_mysql gd zip curl gettext
