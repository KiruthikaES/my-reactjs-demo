FROM ubuntu

RUN apt-get update && apt-get install -y apache2

COPY build/* /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
