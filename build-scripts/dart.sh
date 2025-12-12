#!/usr/bin/env bash
export API_VERSION=`cat .VERSION`
./openapi-generator-6.0.sh generate -i ./openapi.yml -g dart -o guest-dart-sdk/ --additional-properties=browserClient=false,pubName=guest_sdk,pubVersion=$API_VERSION
git add guest-dart-sdk guest-dart-sdk/.gitignore guest-dart-sdk/.openapi-generator-ignore guest-dart-sdk/.travis.yml guest-dart-sdk/.openapi-generator/VERSION
