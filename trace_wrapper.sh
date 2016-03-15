#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

SQ_HOME=$1

echo "enabling TRACE logs in App"

echo "" >> $SQ_HOME/conf/wrapper.conf
echo "wrapper.java.additional.1=-Dsonar.app.log.level=TRACE" >> $SQ_HOME/conf/wrapper.conf
