#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling dev mode"
set_property sonar.web.dev true $SQ_HOME/conf/sonar.properties
#set_property sonar.web.dev.source "/home/sebastienl/DEV/sonarqube/server/sonar-web/src/main/webapp" $SQ_HOME/conf/sonar.properties
