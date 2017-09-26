#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling log rotation every second"
set_property "sonar.log.rollingPolicy" "time:yyyy-MM-dd-mm-ss" "$SQ_HOME/conf/sonar.properties"
