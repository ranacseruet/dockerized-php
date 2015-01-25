FROM ranacseruet/php-node

#App setup
RUN rm -fr /app
RUN rm -fr /app && git clone https://github.com/ranacseruet/dockerized-php.git /app
ADD docker-files/makefile /app/makefile
RUN cd /app && make
ADD docker-files/database.php /app/application/config/database.php
ADD docker-files/run.sh /run.sh
ADD docker-files/.htaccess /app/.htaccess
RUN chmod 755 /*.sh

RUN rm -fr /etc/supervisor/conf.d/supervisord-mysqld.conf

EXPOSE 80
CMD ["/run.sh"]
