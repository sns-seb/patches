#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate JProfiler monitoring
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling JProfiler in conf/sonar.properties, listening on port 8849"
set_property sonar.web.javaAdditionalOpts "-agentpath:/opt/jprofiler/9.1/bin/linux-x64/libjprofilerti.so=port=8849" $SQ_HOME/conf/sonar.properties
