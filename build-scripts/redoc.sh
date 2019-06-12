#!/usr/bin/env bash

redoc-cli bundle openapi.yml
mv redoc-static.html docs/index.html
git add docs/index.html