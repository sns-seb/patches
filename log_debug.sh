#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling DEBUG Logs"
set_property sonar.log.level DEBUG $SQ_HOME/conf/sonar.properties
