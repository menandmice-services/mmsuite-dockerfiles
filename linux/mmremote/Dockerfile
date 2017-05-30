# Debian 8 with mmremote and BIND 9
# Version 8.1.2
FROM debian:latest
LABEL vendor="Men & Mice" maintainer="<services@menandmice.com>" version="8.1.2-docker-beta" Description="Men & Mice Suite DNS Server Controller"

# Update image
RUN apt update && apt -y upgrade && apt -y install bind9 bind9utils dnsutils wget && apt-get clean
RUN mv /etc/bind /etc/bind.debian && mkdir -p /var/cache/bind && ln -s /var/cache/bind /etc/bind
COPY named.conf /etc/bind/named.conf
COPY localhost.db /var/cache/bind/localhost.db
COPY startbind.sh /usr/bin/startbind.sh
RUN chmod +x /usr/bin/startbind.sh && chown -R bind /var/cache/bind
RUN wget -q http://download.menandmice.com/current/mmsuite-controllers.linux.x64.tgz
RUN tar xfz mmsuite-controllers.linux.x64.tgz
RUN (cd /mmsuite-controllers-* && ./install && rm -rf /mmsuite-controllers-*)
RUN named-checkconf -z
VOLUME ["/var/cache/bind"]
EXPOSE 1337 53
WORKDIR /var/cache/bind
CMD ["/usr/bin/startbind.sh"]
