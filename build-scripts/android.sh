#!/usr/bin/env bash

./openapi-generator.sh generate -i ./openapi.yml -g android -o guest-android-sdk/ -c android.json 
git add guest-android-sdk guest-android-sdk/.gitignore guest-android-sdk/.openapi-generator-ignore guest-android-sdk/.openapi-generator/VERSION
