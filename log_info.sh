#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling INFO Logs"
set_property sonar.log.level INFO $SQ_HOME/conf/sonar.properties
