#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'


SDK_NAME=$1

API_VERSION=`cat .VERSION`
GIT_TAG=v$API_VERSION
printf "${GREEN}Comitting $SDK_NAME version $GIT_TAG${NC}\n"

cd $SDK_NAME
git add .
git commit -m "[ci skip] Generated SDK version v$API_VERSION from GitHub Actions for build $GITHUB_RUN_NUMBER"
if [ "$GITHUB_EVENT_NAME" != "pull_request" -a "$GITHUB_REF_NAME" = "master" ]; then
  git tag $GIT_TAG -a -m "Generated tag from GitHub Actions for build $GITHUB_RUN_NUMBER"
fi
git push --set-upstream origin $GITHUB_REF_NAME

printf "${GREEN}Deploying $SDK_NAME to $GITHUB_REF_NAME${NC}\n"

if [ "$GITHUB_REF_NAME" = "master" ]
then
  printf "${GREEN}Deploying master branch${NC}\n"
  git push -q --follow-tags
else
  printf "${GREEN}Deploying NON-MASTER branch${NC}\n"
  git push --force
fi
