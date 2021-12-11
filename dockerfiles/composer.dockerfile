# FROM composer:latest

# WORKDIR /var/www/html

# ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]


FROM composer:latest

# Create a group and user
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# NOTE Set the User at this case is <laravel>
USER laravel 

WORKDIR /var/www/html

# NOTE --ignore-platform-reqs => It ignores all platform requirements, including PHP version, extensions (ext-*), and composer-plugin-api.
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]