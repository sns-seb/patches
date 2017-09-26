#!/bin/bash
###############################
# configure SQ to use Postgres
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using Postgres"
set_property sonar.jdbc.username sonarqube $PROPERTY_FILE
set_property sonar.jdbc.password sonarqube $PROPERTY_FILE
set_property sonar.jdbc.url jdbc:postgresql://localhost:5432/sonarqube $PROPERTY_FILE

