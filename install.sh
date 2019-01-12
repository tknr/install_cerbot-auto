#!/bin/bash -x

echo "this command must be executed in root user."

wget https://dl.eff.org/certbot-auto -O certbot-auto
chmod a+x certbot-auto
cp certbot-auto /usr/local/bin/

cp letsencrypt /etc/cron.d/
chown root:root /etc/cron.d/letsencrypt
chmod 644 /etc/cron.d/letsencrypt

certbot-auto
