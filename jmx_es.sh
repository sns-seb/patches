#!/bin/bash
set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
ACCESS_FILE="/home/sebastienl/DEV/patches/jmxremote.access"
PASSWORD_FILE="/home/sebastienl/DEV/patches/jmxremote.password"
RMI_PORT=12489
PORT=12488

if ! ls ${ACCESS_FILE} &> /dev/null; then
  echo "Access file ${ACCESS_FILE} missing"
  exit 1
fi
if ! ls ${PASSWORD_FILE} &> /dev/null; then
  echo "Password file ${PASSWORD_FILE} missing"
  exit 1
fi

echo "enabling JMX with authentication in ElasticSearch process (port=$PORT, rmi=$PORT)"
set_property "sonar.search.javaAdditionalOpts" "-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.authenticate=true \
-Djava.net.preferIPv4Stack=true \
-Dcom.sun.management.jmxremote.password.file=${PASSWORD_FILE} \
-Dcom.sun.management.jmxremote.access.file=${ACCESS_FILE} \
-Dcom.sun.management.jmxremote.port=${PORT} \
-Dcom.sun.management.jmxremote.rmi.port=${RMI_PORT}" $SQ_HOME/conf/sonar.properties
