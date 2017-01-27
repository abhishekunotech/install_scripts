#!/bin/bash
echo "Now we set the Environment Variables for Hadoop 2.7.3"
set -a
#Hadoop Enviroment Variables Starts
export JAVA_HOME=/opt/jdk1.8.0_111
export HADOOP_INSTALL=/opt/hadoop/hadoop-2.7.3
export HADOOP_PREFIX=/opt/hadoop/hadoop-2.7.3
export HADOOP_HOME=/opt/hadoop/hadoop-2.7.3
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$HADOOP_INSTALL/bin:$PATH
export PATH=$HADOOP_INSTALL/sbin:$PATH
#Hadoop Enviroment Variables Ends
set +a