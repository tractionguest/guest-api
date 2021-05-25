#!/usr/bin/env bash

java -ea                          \
  -Xms512M                        \
  -Xmx1024M                       \
  -server                         \
  -jar jars/openapi-generator-cli-5.1.1.jar "$@"
