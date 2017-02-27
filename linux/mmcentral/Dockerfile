# Debian 8 with mmcentral
# Version 8.1
FROM debian:latest
LABEL vendor="Men & Mice" maintainer="<services@menandmice.com>" version="8.1-docker-beta" Description="Men & Mice Suite Central"

# Update image
RUN apt update && apt -y upgrade && apt -y install python wget && apt-get clean
RUN wget -q http://download.menandmice.com/current/mmsuite-central.linux.x64.tgz && tar xvfz mmsuite-central.linux.x64.tgz && (cd /mmsuite-central-* && ./install && rm -rf /mmsuite-central-*)
VOLUME ["/var/mmsuite"]
EXPOSE 1231
WORKDIR /var/mmsuite
CMD ["/usr/sbin/mmcentrald","-f","-uroot","-groot","-d/var/mmsuite/mmcentral"]
