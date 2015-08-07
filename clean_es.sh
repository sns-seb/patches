#!/bin/bash
###############################
# deletes ES directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

ES_DIR=$SQ_HOME/data/es
echo "deleting ES directory"
rm -Rf $ES_DIR

