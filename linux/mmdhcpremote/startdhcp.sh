#!/bin/sh
/usr/sbin/dhcpd -cf /etc/dhcp/dhcpd.conf
/usr/sbin/mmdhcpremoted -f -u root -g root -c /etc/dhcp/dhcpd.conf -e /var/lib/dhcp/dhcpd.leases -d /var/mmsuite/dhcp_server_controller
