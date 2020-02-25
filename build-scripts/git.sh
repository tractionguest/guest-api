#!/usr/bin/env bash

export GIT_TAG=v$API_VERSION
git commit -m "[skip travis] Generated SDK version v$API_VERSION from TravisCI for build $TRAVIS_BUILD_NUMBER"
git tag $GIT_TAG -a -m "Generated tag from TravisCI for build $TRAVIS_BUILD_NUMBER"
git push -q --follow-tags git@github.com:tractionguest/guest-api.git HEAD:master