#!/usr/bin/env bash

yum install -y nginx spawn-fcgi git
chmod -R +x /opt/otrs
mkdir -p /var/run/otrs
chmod -R +x /var/run/otrs
cd ~
git clone https://github.com/mdll/otrs-fcgi.git
cp otrs-fcgi/bin/fastcgi-wrapper.pl /usr/local/bin/
chmod +x /usr/local/bin/fastcgi-wrapper.pl
cp otrs-fcgi/init.d/otrs-fcgi /etc/init.d/
chmod +x /etc/init.d/otrs-fcgi
cd ~
cp otrs-fcgi/nginx/otrs /etc/nginx/conf.d/otrs.conf
systemctl start nginx
sed -i -r 's/www-data/root/' /etc/init.d/otrs-fcgi