#!/usr/bin/env bash

yum install -y iproute initscripts mlocate vim wget openssh openssh-clients openssh-server
wget https://ftp.otrs.org/pub/otrs/RPMS/rhel/7/otrs-5.0.18-01.noarch.rpm
yum install -y --nogpgcheck otrs-5.0.18-01.noarch.rpm
rm -f otrs-5.0.18-01.noarch.rpm
yum install -y https://ftp.yz.yamagata-u.ac.jp/pub/linux/fedora-projects/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
yum -y install "perl(Text::CSV_XS)"