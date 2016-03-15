#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "WebServer on port 9010 and SearchServer on port 9011"
set_property sonar.web.port 9010 $SQ_HOME/conf/sonar.properties
set_property sonar.search.port 9011 $SQ_HOME/conf/sonar.properties

