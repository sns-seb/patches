#!/bin/bash
###############################
# copy a backup of ES index 
###############################

set -euo pipefail

SQ_HOME=$1

if [ ! -e $SQ_HOME/data ]; then
  mkdir $SQ_HOME/data
fi
if [ -e $SQ_HOME/data/es ]; then
  rm -Rf $SQ_HOME/data/es
fi

BACKUP=/home/sebastienl/DEV/patches/es-backup
echo "restore ES index from backup $BACKUP"
cp -r $BACKUP $SQ_HOME/data/es

