#!/bin/bash
###############################
# copies the sonar-license plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

LICENSE_FILE=~/DEV/license/sonar-license-plugin/target/sonar-license-plugin-3.3-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $LICENSE_FILE to $EXT_DIR"
cp  $LICENSE_FILE $EXT_DIR

