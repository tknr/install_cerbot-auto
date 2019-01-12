#!/bin/bash -x

echo "this command must be executed in root user."

wget https://dl.eff.org/certbot-auto -O certbot-auto
chmod a+x certbot-auto
cp certbot-auto /usr/local/bin/
cp letsencrypt /etc/cron.d/

certbot-auto
