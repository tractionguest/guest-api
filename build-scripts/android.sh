#!/usr/bin/env bash

./openapi-generator-4.3.sh generate -i ./bundled_openapi.json -g android -o guest-android-sdk/ -c android.json 
git add guest-android-sdk guest-android-sdk/.gitignore guest-android-sdk/.openapi-generator-ignore guest-android-sdk/.openapi-generator/VERSION
