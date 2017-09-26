#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling system passcode with value foobar"
set_property "sonar.web.systemPasscode" "foobar" $SQ_HOME/conf/sonar.properties
