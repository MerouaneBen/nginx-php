FROM nginx:alpine
LABEL Maintainer="Merouane Benthameur <merouane@mbenthameur.dev>" \
      Description="Lightweight image with Nginx & PHP 7.3 based on Alpine Linux."

# Install packages
RUN apk --no-cache add php7 php7-mysqli php7-json php7-openssl php7-curl php7-fpm \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session \
    php7-mbstring php7-gd curl vim wget 

COPY config/php.ini /etc/php7/conf.d/custom.ini

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

# Expose the port nginx is reachable on
EXPOSE 80
EXPOSE 443
