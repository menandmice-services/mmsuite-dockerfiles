#!/bin/sh
/usr/sbin/apache2ctl start
/usr/sbin/mmwsd -f -uwww-data -gwww-data -d/var/www/MenAndMice -ll5 -p8111 -http
