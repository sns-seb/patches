#!/bin/bash
###############################
# copies the sonar-cpp plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

CPP_FILE=~/DEV/releases/sonar-cpp-plugin-3.8.1.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $CPP_FILE to $EXT_DIR"
cp $CPP_FILE $EXT_DIR

