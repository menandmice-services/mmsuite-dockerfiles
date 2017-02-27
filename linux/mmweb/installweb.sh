#!/bin/sh
cd mmsuite-web*
cp -a ./web /var/www/MenAndMice
cp linux/mmwsd /usr/sbin/
cd ..
rm -rf mmsuite-web*
