#!/bin/bash
###############################
# copies the sonar-cobol plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

COBOL_FILE=~/DEV/patches/plugins/sonar-cobol-plugin-2.8.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $COBOL_FILE to $EXT_DIR"
cp  $COBOL_FILE $EXT_DIR

set_property sonar.cobol.license.secured `cat scripts/patches/cobol_license.txt` $SQ_HOME/conf/sonar.properties

