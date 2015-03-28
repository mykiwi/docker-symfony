FROM php:5.6

RUN apt-get update && \
    apt-get install -y libicu-dev g++ && \
    docker-php-ext-install mbstring && \
    docker-php-ext-install intl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME  /srv
WORKDIR /srv

EXPOSE 80

RUN echo "date.timezone = Europe/Paris" >> /usr/local/etc/php/conf.d/symfony.ini

CMD ["server:run", "0.0.0.0:80"]
ENTRYPOINT ["app/console"]
