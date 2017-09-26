#!/bin/bash
###############################
# copies the sonar-branch plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

BRANCH_FILE=~/DEV/branch/sonar-branch-plugin/target/sonar-branch-plugin-1.0-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $BRANCH_FILE to $EXT_DIR"
cp  $BRANCH_FILE $EXT_DIR

