#!/bin/bash
###############################
# copies the sonar-js plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

JS_FILE=~/DEV/patches/plugins/sonar-javascript-plugin-2.9.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $JS_FILE to $EXT_DIR"
cp  $JS_FILE $EXT_DIR


