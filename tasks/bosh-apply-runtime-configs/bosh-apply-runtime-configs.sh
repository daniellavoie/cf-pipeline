#!/bin/bash

set -x

for RUNTIME_CONFIG_FILE in runtime-configs/*.yml
do
  if [[ -f $file ]]; then
    RUNTIME_CONFIG_NAME=$(basename -- "${RUNTIME_CONFIG_FILE%%.*}")

    echo Applying runtime config $RUNTIME_CONFIG_NAME with $RUNTIME_CONFIG_FILE

    bosh --non-interactive update-runtime-config $RUNTIME_CONFIG_FILE --name $RUNTIME_CONFIG_NAME
  fi
done