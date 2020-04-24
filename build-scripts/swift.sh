#!/usr/bin/env bash

./openapi-generator-4.3.sh generate -i ./openapi.yml -g swift5 -o guest-swift-sdk/ -c swift5.json 
git add guest-swift-sdk guest-swift-sdk/.gitignore guest-swift-sdk/.openapi-generator-ignore guest-swift-sdk/.openapi-generator/VERSION
