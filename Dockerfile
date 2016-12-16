FROM davefx/trusty-php-selenium-headless:latest
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

MAINTAINER David Marín <david.marin@toptal.com>
RUN apt-get -y update
RUN apt-get install -y php5 mysql-server php5-mysqlnd
RUN a2ensite default-ssl
RUN service apache2 start
RUN service mysql start

