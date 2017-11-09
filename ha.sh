#!/bin/bash
###############################
# copies the sonar-ha plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

HA_FILE=~/DEV/sonar-ha/sonar-ha-plugin/target/sonar-ha-plugin-1.0-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $HA_FILE to $EXT_DIR"
cp $HA_FILE $EXT_DIR

