#!/usr/bin/env bash

SDK_NAME=$1

export GIT_TAG=v$API_VERSION
cd $SDK_NAME
git checkout -b $CIRCLE_BRANCH
git branch --set-upstream-to=origin/$CIRCLE_BRANCH $CIRCLE_BRANCH
git pull
git add .
git commit -m "[ci skip] Generated SDK version v$API_VERSION from TravisCI for build $CIRCLE_BUILD_NUM"
if [ "$CIRCLE_PULL_REQUESTS" != *"github.com"* -a "$CIRCLE_BRANCH" = "master" ]; then 
  git tag $GIT_TAG -a -m "Generated tag from CircleCI for build $CIRCLE_BUILD_NUM"
fi
git push -q --follow-tags git@github.com:tractionguest/guest-api.git HEAD:$CIRCLE_BRANCH