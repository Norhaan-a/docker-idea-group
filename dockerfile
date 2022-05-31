FROM php:8.1-apache-buster

ENV APACHE_DOCUMENT_ROOT /storage/branches/coutry-info-main

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf


CMD chmod -R 755 /storage/branches/country-info && \
sed -i -e '$aListen '$PORT'' /etc/apache2/conf-available/docker-php.conf && \
apache2-foreground


