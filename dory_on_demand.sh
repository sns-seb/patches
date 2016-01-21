#!/bin/bash
###############################
# configure SQ to use Dory's DB (in local VM) 
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using Dory On Demand DB"
set_property sonar.jdbc.username sle1 $PROPERTY_FILE
set_property sonar.jdbc.password sle1 $PROPERTY_FILE
set_property sonar.jdbc.url "jdbc:postgresql://doryondemanddb.internal.sonarsource.com/sle1" $PROPERTY_FILE

