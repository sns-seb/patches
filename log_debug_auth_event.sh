#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling DEBUG Logs in WebServer for auth.event"
set_property sonar.log.level.web.auth.event DEBUG $SQ_HOME/conf/sonar.properties
