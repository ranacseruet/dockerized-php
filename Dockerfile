FROM ranacseruet/php-node

#App setup
RUN rm -fr /app
ADD . /app
RUN cd /app && make
ADD docker-files/database.php /app/application/config/database.php
ADD docker-files/run.sh /run.sh
ADD docker-files/.htaccess /app/.htaccess
RUN chmod 755 /*.sh

RUN rm -fr /etc/supervisor/conf.d/supervisord-mysqld.conf

EXPOSE 80
CMD ["/run.sh"]
