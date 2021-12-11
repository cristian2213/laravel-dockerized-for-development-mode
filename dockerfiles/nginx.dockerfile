FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# This command will be executed in the working directory
RUN mv nginx.conf default.conf 
# 👆 Rename the file

# Rewrite the working directory
WORKDIR /var/www/html

# Copy my source code into the working directory
COPY src .

# NOTE this is for solving a permision problem
RUN chmod -R gu+w ./storage
RUN chmod -R guo+w ./storage