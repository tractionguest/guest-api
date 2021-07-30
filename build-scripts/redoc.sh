#!/usr/bin/env bash

redoc-cli bundle bundled_openapi.json -t custom-theme.hbs --options=./custom-options.json
mv redoc-static.html docs/index.html
git add docs/index.html