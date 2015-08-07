#!/bin/bash
###############################
# copies the sonar-views plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

VIEWS_FILE=~/DEV/views/target/sonar-views-plugin-2.9-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $VIEWS_FILE to $EXT_DIR"
cp  $VIEWS_FILE $EXT_DIR

set_property views.license.secured `cat scripts/patches/views_license.txt` $SQ_HOME/conf/sonar.properties

