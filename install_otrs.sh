#!/usr/bin/env bash

yum install -y iproute initscripts mlocate vim wget openssh openssh-clients openssh-server
wget https://ftp.otrs.org/pub/otrs/RPMS/rhel/7/otrs-5.0.18-01.noarch.rpm
yum install -y --nogpgcheck otrs-5.0.18-01.noarch.rpm
rm -f otrs-5.0.18-01.noarch.rpm
yum install -y https://ftp.yz.yamagata-u.ac.jp/pub/linux/fedora-projects/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
yum -y install "perl(Text::CSV_XS)"
rpm -Uvh https://yum.postgresql.org/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm
yum install postgresql96-server postgresql96 -y
/usr/pgsql-9.6/bin/postgresql96-setup initdb
yum install perl-DBD-Pg -y
sed -i -r 's/peer/trust/' /var/lib/pgsql/9.6/data/pg_hba.conf
sed -i -r 's/ident/trust/' /var/lib/pgsql/9.6/data/pg_hba.conf