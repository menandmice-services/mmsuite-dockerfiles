# Debian 8 with mmcentral
# Version 8.2.8
FROM debian:latest
LABEL vendor="Men & Mice" maintainer="<services@menandmice.com>" version="8.2.8-docker-beta" Description="Men & Mice Suite Central"

# Update image
RUN DEBIAN_FRONTEND=noninteractive apt update && apt -y upgrade && apt -y install python wget && apt-get clean
RUN DEBIAN_FRONTEND=noninteractive wget -q http://download.menandmice.com/Linux/8.2.8/mmsuite-central.linux.x64.tgz && tar xvfz mmsuite-central.linux.x64.tgz && (cd /mmsuite-central-* && ./install && rm -rf /mmsuite-central-* && pkill mmcentrald && rm /var/mmsuite/mmcentral/mmsuite.db* )
VOLUME ["/var/mmsuite"]
EXPOSE 1231
WORKDIR /var/mmsuite
CMD ["/usr/sbin/mmcentrald","-f","-uroot","-groot","-d/var/mmsuite/mmcentral"]
