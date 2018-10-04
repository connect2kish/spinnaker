#!/bin/bash

set -e

curl -O https://raw.githubusercontent.com/spinnaker/halyard/master/install/debian/InstallHalyard.sh
sudo bash InstallHalyard.sh --user ubuntu

REGION=eu-west-2

echo $AWS_SECRET_KEY | hal config storage s3 edit  \
    --access-key-id  \
    --secret-access-key \
    --region $REGION

hal config storage edit --type s3

