FROM php:8.2-apache

# Copy the entire repo to Apache's web root
COPY . /var/www/html/

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Set permissions (optional but recommended)
RUN chown -R www-data:www-data /var/www/html/