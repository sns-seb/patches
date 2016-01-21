#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

SQ_HOME=$1

echo "enabling debug in conf/wrapper.conf, listening on port 6006 and blocking"

echo "wrapper.java.additional.1=-Xdebug" >> $SQ_HOME/conf/wrapper.conf
echo "wrapper.java.additional.2=-Xrunjdwp:transport=dt_socket,address=6006,server=y,suspend=y" >> $SQ_HOME/conf/wrapper.conf
echo "wrapper.java.additional.3=-Dsonar.enableStopCommand=true" >> $SQ_HOME/conf/wrapper.conf
echo "wrapper.java.additional.4=-Dsonar.app.log.level=TRACE" >> $SQ_HOME/conf/wrapper.conf
