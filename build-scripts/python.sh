#!/usr/bin/env bash

./openapi-generator-4.3.sh generate -i ./openapi.yml -g python -o guest-python-sdk/ -c python.json 
git add guest-python-sdk guest-python-sdk/.gitignore guest-python-sdk/.openapi-generator-ignore guest-python-sdk/.openapi-generator/VERSION
