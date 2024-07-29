# laravel/Dockerfile
FROM php:8.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

# Set working directory
WORKDIR /var/www/laravel

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy initialization script from the root directory
COPY ../init.sh /init.sh

# Set permissions
RUN chmod +x /init.sh

# Set permissions
RUN chown -R www-data:www-data /var/www

EXPOSE 9000
CMD ["php-fpm"]
