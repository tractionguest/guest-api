#!/usr/bin/env bash

./openapi-generator.sh generate -i ./openapi.yml -g typescript-angular -o guest-typescript-sdk/ -DnpmName=guest_sdk -DnpmVersion=$API_VERSION -DsupportsES6=true -DmodelSuffix=Guest
git add guest-typescript-sdk guest-typescript-sdk/.gitignore guest-typescript-sdk/.openapi-generator-ignore guest-typescript-sdk/.travis.yml guest-typescript-sdk/.openapi-generator/VERSION
