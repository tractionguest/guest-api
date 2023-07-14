#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'


SDK_NAME=$1

API_VERSION=`cat .VERSION`
GIT_TAG=v$API_VERSION
printf "${GREEN}Comitting $SDK_NAME version $GIT_TAG${NC}\n"

cd $SDK_NAME
git add .
git commit -m "[ci skip] Generated SDK version v$API_VERSION from CircleCI for build $CIRCLE_BUILD_NUM"
if [ "$CIRCLE_PULL_REQUESTS" != *"github.com"* -a "$CIRCLE_BRANCH" = "master" ]; then
  git tag $GIT_TAG -a -m "Generated tag from CircleCI for build $CIRCLE_BUILD_NUM"
fi
git push --set-upstream origin $CIRCLE_BRANCH

printf "${GREEN}Deploying $SDK_NAME to $CIRCLE_BRANCH${NC}\n"

if [ "$CIRCLE_BRANCH" = "master" ]
then
  printf "${GREEN}Deploying master branch${NC}\n"
  git push -q --follow-tags
else
  printf "${GREEN}Deploying NON-MASTER branch${NC}\n"
  git push --force
fi
