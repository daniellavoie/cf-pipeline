#!/bin/bash

set -x

BOSH_OPTIONS=`cat $DEPLOYMENT_PROFILE`

echo "DEPLOYMENT_NAME: $DEPLOYMENT_NAME"
echo "DEPLOYMENT_FILE: $DEPLOYMENT_FILE"
echo "DEPLOYMENT_PROFILE: $DEPLOYMENT_PROFILE"
echo "BOSH_OPTIONS: $BOSH_OPTIONS"


bosh --non-interactive --deployment=$DEPLOYMENT_NAME deploy $DEPLOYMENT_FILE $BOSH_OPTIONS