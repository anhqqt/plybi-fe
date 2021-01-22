FROM nginx:latest
ARG SSL_TYPE

# Update system
RUN apt-get update -y
RUN apt-get upgrade -y

# Install network package to troubeshoot
RUN apt-get install net-tools -y

# Create new web dir
WORKDIR /home/plybi

# COPY config for nginx to container
# ADD my-default-${SSL_TYPE}.conf /etc/nginx/conf.d/default.conf
# ADD my-nginx.conf /etc/nginx/nginx.conf

# ADD source to image
ADD build .

# Set permission for user www-data and group www-data
# RUN chown -R www-data:www-data /home/cicd-laravel
# RUN chmod -R 755 /home/cicd-laravel
# RUN chmod -R 755 /home/cicd-laravel/storage

# Expose port 80 and 443
EXPOSE 80 443


