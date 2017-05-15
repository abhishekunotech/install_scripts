#!/usr/bin/env bash

yum install perl-DBD-Pg git -y
cd /opt/otrs
git clone https://github.com/abhishekunotech/OTRS-Kernel.git
cd OTRS-Kernel
yes | cp -R * ../Kernel/
systemctl restart httpd