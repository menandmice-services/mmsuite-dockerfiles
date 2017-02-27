# Debian 8 with mmweb
# Version 8.1
FROM debian:latest
LABEL vendor="Men & Mice" maintainer="<services@menandmice.com>" version="8.1-docker-beta" Description="Men & Mice Suite Web-UI"

# Update image
RUN DEBIAN_FRONTEND=noninteractive apt update && DEBIAN_FRONTEND=noninteractive apt -y upgrade && DEBIAN_FRONTEND=noninteractive apt -y install python wget apache2 && DEBIAN_FRONTEND=noninteractive apt-get clean
RUN wget -q http://download.menandmice.com/current/mmsuite-web.linux.x64.tgz && tar xvfz mmsuite-web.linux.x64.tgz
COPY installweb.sh /usr/sbin/installweb.sh
RUN /usr/sbin/installweb.sh
COPY mmwebext.conf /etc/apache2/conf-available
RUN ln -s /etc/apache2/conf-available/mmwebext.conf /etc/apache2/conf-enabled/mmwebext.conf
COPY startmmweb.sh /usr/sbin/startmmweb.sh
RUN chmod +x /usr/sbin/startmmweb.sh

# Set Apache environment variables (can be changed on docker run with -e)
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_SERVERADMIN admin@localhost
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERALIAS localhost
ENV APACHE_DOCUMENTROOT /var/www

EXPOSE 80
CMD ["/usr/sbin/startmmweb.sh"]
