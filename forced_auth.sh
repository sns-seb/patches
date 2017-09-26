#!/bin/bash
###############################
# sets property sonar.forceAuthentication in sonar.properties
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "configuring SQ to require authentication"
set_property "sonar.forceAuthentication" "true" $SQ_HOME/conf/sonar.properties
