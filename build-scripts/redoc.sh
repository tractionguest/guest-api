#!/usr/bin/env bash

yarn build
mv redoc-static.html docs/index.html
git add docs/index.html