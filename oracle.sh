#!/bin/bash
###############################
# configure SQ to use Oracle
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using Oracle"
set_property sonar.jdbc.username sonar $PROPERTY_FILE
set_property sonar.jdbc.password sonar $PROPERTY_FILE
set_property sonar.jdbc.url jdbc:oracle:thin:@localhost:1521/ORCL $PROPERTY_FILE

