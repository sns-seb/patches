#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling debug in conf/sonar.properties, listening on port 5005"
set_property sonar.web.javaAdditionalOpts -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 $SQ_HOME/conf/sonar.properties
