#!/bin/bash
###############################
# copies the sonar-devcockpit plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

DEVCOCKPIT_FILE=~/DEV/devcockpit/target/sonar-dev-cockpit-plugin-1.11-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $DEVCOCKPIT_FILE to $EXT_DIR"
cp  $DEVCOCKPIT_FILE $EXT_DIR

#set_property sonar.devcockpit.license.secured `cat scripts/patches/devcockpit_license.txt` $SQ_HOME/conf/sonar.properties

