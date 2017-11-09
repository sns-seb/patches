#!/bin/bash

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabled ES HTTP port on 9032"
set_property "sonar.search.httpPort" "9032" $SQ_HOME/conf/sonar.properties
