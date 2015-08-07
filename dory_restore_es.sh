#!/bin/bash
###############################
# configure SQ to use Dory's DB (in local VM) 
###############################

set -euo pipefail

SQ_HOME=$1

if [ ! -e $SQ_HOME/data ]; then
  mkdir $SQ_HOME/data
fi
if [ -e $SQ_HOME/data/es ]; then
  rm -Rf $SQ_HOME/data/es
fi

cp -r /home/sebastienl/DEV/patches/es-save-dory $SQ_HOME/data/es

