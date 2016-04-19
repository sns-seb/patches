#!/bin/bash
###############################
# sets property sonar.ce.javaAdditionalOpts in sonar.properties to activate debug on port 5006
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling debug for Compute Engine, listening on port 5006"
set_property sonar.ce.javaAdditionalOpts -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5006 $SQ_HOME/conf/sonar.properties
