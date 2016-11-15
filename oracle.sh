#!/bin/bash
###############################
# configure SQ to use Oracle
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties
ORACLE_DRIVER_DIR=$SQ_HOME/extensions/jdbc-driver/oracle
DRIVER_FILENAME=ojdbc6-11.2.0.3.0.jar
SRC_DIR=/home/sebastienl/DEV/patches

if [ ! -e $ORACLE_DRIVER_DIR ]; then
  mkdir -p $ORACLE_DRIVER_DIR
fi
if [ ! -e $ORACLE_DRIVER_DIR/$DRIVER_FILENAME ]; then
  cp $SRC_DIR/$DRIVER_FILENAME $ORACLE_DRIVER_DIR/
fi

echo "using Oracle"
set_property sonar.jdbc.username sonar $PROPERTY_FILE
set_property sonar.jdbc.password sonar $PROPERTY_FILE
set_property sonar.jdbc.url jdbc:oracle:thin:@localhost:1521/ORCL $PROPERTY_FILE

