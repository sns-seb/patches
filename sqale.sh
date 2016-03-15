#!/bin/bash
###############################
# copies the sonar-sqale plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

SQALE_FILE=~/DEV/sqale/target/sonar-sqale-plugin-2.8-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $SQALE_FILE to $EXT_DIR"
cp  $SQALE_FILE $EXT_DIR


