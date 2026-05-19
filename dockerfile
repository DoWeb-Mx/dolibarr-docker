# ARG CACHE_BUST=14
# FROM php:8.4-apache
# FROM almalinux:9
# FROM ${ARCH}php:%PHP_BASE_IMAGE%
# 1. Usamos la versión exacta que ya sabemos que funciona
FROM dolibarr/dolibarr:23.0.2

LABEL maintainer="DoWebMx <ayuda@doweb.mx>"

# CUSTOMIZING DOCKER RUN FOR DOWEBMX
COPY docker-run.sh /usr/local/bin/docker-run.sh
RUN chmod +x /usr/local/bin/docker-run.sh

# ADDING ZIP LIBRARY
RUN apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/*

# BRANDING
COPY ./config/*.png /tmp/dowebmx/branding/
COPY ./config/*.jpg /tmp/dowebmx/branding/
COPY ./config/thumbs/*.jpg /tmp/dowebmx/branding/thumbs/
COPY ./config/thumbs/*.png /tmp/dowebmx/branding/thumbs/

# CFDIMX PLUGIN BY DOWEBMX
# COPY ./plugins/*.zip /tmp/dowebmx/plugins/

# PREPARING INITIAL DATABASE
COPY ./dump/dolibarr-saas-files/*.sql /tmp/dowebmx/sql/

RUN rm -rf /var/www/html/install/mysql/tables/* \
    && rm -rf /var/www/html/install/mysql/data/*

RUN cp /tmp/dowebmx/sql/*.sql /var/www/html/install/mysql/tables/	

# HARDENING
RUN echo "ServerName localhost" >> /etc/apache2/conf-enabled/servername.conf
RUN echo "ServerTokens Prod" >> /etc/apache2/apache2.conf \
    && echo "ServerSignature Off" >> /etc/apache2/apache2.conf

# RUN sed -i 's/\r$//' /usr/local/bin/docker-run.sh