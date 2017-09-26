#!/bin/bash
###############################
# sets property sonar.ce.workers to 2 in sonar.properties to process two CE tasks concurrently
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "configuring CE to run 12 workers in parallel"
set_property sonar.ce.workerCount 12 $SQ_HOME/conf/sonar.properties
