#!/usr/bin/env bash

export GIT_TAG=v$API_VERSION
git commit -m "[ci skip] Generated SDK version v$API_VERSION from TravisCI for build $CIRCLE_BUILD_NUM"
if [ "$CIRCLE_PULL_REQUESTS" != *"github.com"* -a "$CIRCLE_BRANCH" = "master" ]; then 
  git tag $GIT_TAG -a -m "Generated tag from CircleCI for build $CIRCLE_BUILD_NUM"
fi
git push -q --follow-tags git@github.com:tractionguest/guest-api.git HEAD:$CIRCLE_BRANCH