# Debian 8 with mmremote and ISC-DHCP
# Version 8.1
FROM debian:latest
LABEL vendor="Men & Mice" maintainer="<services@menandmice.com>" version="8.1-docker-beta" Description="Men & Mice Suite DHCP Server Controller"

# Update image
COPY startdhcp.sh /etc/dhcp/startdhcp.sh
RUN apt update && apt -y upgrade && apt -y install isc-dhcp-server python wget && apt-get clean
RUN chmod +x /etc/dhcp/startdhcp.sh
RUN wget http://download.menandmice.com/current/mmsuite-controllers.linux.x64.tgz
RUN tar xvfz mmsuite-controllers.linux.x64.tgz
RUN (cd /mmsuite-controllers-* && ./install && rm -rf /mmsuite-controllers-*)
VOLUME ["/var/lib/dhcp","/etc/dhcp/"]
EXPOSE 4151 67 68 546 547
WORKDIR /var/lib/dhcp
CMD ["/etc/dhcp/startdhcp.sh"]
