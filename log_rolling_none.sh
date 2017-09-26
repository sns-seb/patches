#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "disable log rotation"
set_property "sonar.log.rollingPolicy" "none" "$SQ_HOME/conf/sonar.properties"
