#!/bin/bash

yum install -y java-1.7.0-openjdk.x86_64
yum install -y wget vim

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch


cat <<EOF >>/etc/yum.repos.d/elasticsearch.repo
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=http://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1	
EOF

yum install -y elasticsearch

cd /etc/elasticsearch/

cat <<EOF >> elasticsearch.yml
network.host: 0.0.0.0
EOF

curl -XGET 'localhost:9200'