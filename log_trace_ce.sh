#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling TRACE Logs in Compute Engine"
set_property sonar.log.level.ce TRACE $SQ_HOME/conf/sonar.properties
