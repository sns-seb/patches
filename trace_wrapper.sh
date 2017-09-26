#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

SQ_HOME=$1

source scripts/property_utils.sh

echo "enabling TRACE logs in App"

echo "" >> $SQ_HOME/conf/wrapper.conf
echo "wrapper.java.additional.3=-Dsonar.log.app.level=TRACE" >> $SQ_HOME/conf/wrapper.conf

set_property "sonar.log.level.app" "TRACE" $SQ_HOME/conf/sonar.properties
