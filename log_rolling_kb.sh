#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling log rotation every 10kb"
set_property "sonar.log.rollingPolicy" "size:10KB" "$SQ_HOME/conf/sonar.properties"
