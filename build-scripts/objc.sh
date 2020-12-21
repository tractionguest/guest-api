#!/usr/bin/env bash

./openapi-generator-4.3.sh generate -i ./openapi.yml -g objc -o guest-objc-sdk/ -c objc.json 
git add guest-objc-sdk guest-objc-sdk/.gitignore guest-objc-sdk/.openapi-generator-ignore guest-objc-sdk/.openapi-generator/VERSION
