#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'


SDK_NAME=$1

export GIT_TAG=v$API_VERSION
printf "${GREEN}Comitting $SDK_NAME${NC}\n"

cd $SDK_NAME
git add .
git commit -m "[ci skip] Generated SDK version v$API_VERSION from CircleCI for build $CIRCLE_BUILD_NUM"
if [ "$CIRCLE_PULL_REQUESTS" != *"github.com"* -a "$CIRCLE_BRANCH" = "master" ]; then 
  git tag $GIT_TAG -a -m "Generated tag from CircleCI for build $CIRCLE_BUILD_NUM"
fi
git push --set-upstream origin $CIRCLE_BRANCH

printf "${GREEN}Deploying $SDK_NAME to $CIRCLE_BRANCH${NC}\n"
git push -q --follow-tags