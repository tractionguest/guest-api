#!/usr/bin/env bash
export API_VERSION=`cat .VERSION`
./openapi-generator.sh generate -i ./bundled_openapi.json -g dart -o guest-dart-sdk/ -DbrowserClient=false -DpubName=guest_sdk -DpubVersion=$API_VERSION
git add guest-dart-sdk guest-dart-sdk/.gitignore guest-dart-sdk/.openapi-generator-ignore guest-dart-sdk/.travis.yml guest-dart-sdk/.openapi-generator/VERSION
