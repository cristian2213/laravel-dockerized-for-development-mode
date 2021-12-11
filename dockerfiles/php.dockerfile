FROM php:8.1.0RC5-fpm-alpine3.14

WORKDIR /var/www/html

COPY src .

# NOTE docker-php-ext-install => This is a helper what i can install php extensions
# NOTE pdo => driver of connection to the database
# NOTE PDO_MYSQL => is a driver for connecting with mysql
RUN docker-php-ext-install pdo pdo_mysql

# NOTE It changes the file owner and group
# REVIEW OPTIONS:  -R => operate on files and directories recursively
RUN chown -R www-data:www-data /var/www/html
