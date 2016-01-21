#!/bin/bash
###############################
# copies the sonar-sqale plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

VIEWS_FILE=~/DEV/sqale/target/sonar-sqale-plugin-2.7-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $VIEWS_FILE to $EXT_DIR"
cp  $VIEWS_FILE $EXT_DIR

set_property sqale.license.secured `cat scripts/patches/sqale_license.txt` $SQ_HOME/conf/sonar.properties

