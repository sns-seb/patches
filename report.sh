#!/bin/bash
###############################
# copies the sonar-report plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

REPORT_FILE=~/DEV/report/target/sonar-report-plugin-1.6-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins/
echo "copy $REPORT_FILE to $EXT_DIR"
cp  $REPORT_FILE $EXT_DIR

set_property sonar.report.license.secured `cat scripts/patches/report_license.txt` $SQ_HOME/conf/sonar.properties

