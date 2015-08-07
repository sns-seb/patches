#!/bin/bash
###############################
# install plugins from dir patches/plugins into the plugin dir of the SQ instance
###############################

set -uo pipefail

SQ_HOME=$1
#SQ_HOME="/home/sebastienl/DEV/sonarqube/sonar-application/target/sonarqube-5.2-SNAPSHOT"


SRC_PLUGIN_DIR=~/DEV/patches/plugins
PLUGIN_DIR=$SQ_HOME/extensions/plugins


for JAR in $(cd $SRC_PLUGIN_DIR && ls -1 *.jar); do
  PLUGIN="$(echo $JAR | sed 's/-[0-9\.]*\.jar//')"
  EXISTING=$(cd $PLUGIN_DIR && ls -1 $PLUGIN-*.jar 2> /dev/null | wc -l)
  if [ $EXISTING -gt 0 ]; then
    echo "plugin $PLUGIN already exists: $(ls -1 $PLUGIN_DIR/$PLUGIN-*.jar)"
  else
    echo "copying $JAR to $PLUGIN_DIR"
    cp $SRC_PLUGIN_DIR/$JAR $PLUGIN_DIR/
  fi
done
