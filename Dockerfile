FROM php:8.1-cli

# Make debugging easier
RUN set -ex \
    # Update and install OS packages
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        unzip \
        libicu-dev \
        libpng-dev \
        libjpeg62-turbo-dev \
        libfreetype6-dev \
        libzip-dev \
		libonig-dev \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions (split from apt so errors are clearer)
RUN set -ex \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd intl mbstring exif zip

# Install Composer (from official installer)
RUN set -ex \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

WORKDIR /app

# Copy project files
COPY . /app

# Install PHP dependencies
RUN composer install --no-interaction --no-dev --prefer-dist

# Copy fonts into TCPDF
RUN cp fonts/* vendor/tecnickcom/tcpdf/fonts/

# Default command (overridden in docker run)
CMD ["php", "make-planner.php"]
