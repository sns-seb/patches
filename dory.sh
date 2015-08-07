#!/bin/bash
###############################
# configure SQ to use Dory's DB (in local VM) 
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using Dory's DB"
set_property sonar.jdbc.username sonar $PROPERTY_FILE
set_property sonar.jdbc.password sonar $PROPERTY_FILE
set_property sonar.jdbc.url jdbc:postgresql://localhost:15432/sonar $PROPERTY_FILE

