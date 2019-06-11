#!/usr/bin/env bash

java -ea                          \
  -Xms512M                        \
  -Xmx1024M                       \
  -server                         \
  -jar jars/openapi-generator-cli-4.0.1.jar "$@"
