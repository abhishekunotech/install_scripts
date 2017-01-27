#!/bin/bash
echo "Now we set the Environment Variables for Java 1.8.0u111"
set -a
export JAVA_HOME=/opt/jdk1.8.0_111
export JRE_HOME=/opt/jdk1.8.0_111/jre
export PATH=$PATH:/opt/jdk1.8.0_111/bin:/opt/jdk1.8.0_111/jre/bin
set +a