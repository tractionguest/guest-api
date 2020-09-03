#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'

SDK_NAME=$1

printf "${GREEN}Cloning git@github.com:tractionguest/$SDK_NAME.git${NC}\n"
git clone git@github.com:tractionguest/$SDK_NAME.git
cd $SDK_NAME
git ls-remote --exit-code --heads  git@github.com:tractionguest/$SDK_NAME.git $CIRCLE_BRANCH
if [ "$?" == "1" ] ; then
  printf "${GREEN}Checking out EXISTING branch $CIRCLE_BRANCH${NC}\n"

  git checkout $CIRCLE_BRANCH
  git pull
else
  printf "${GREEN}Creating branch $CIRCLE_BRANCH${NC}\n"
  git checkout -b $CIRCLE_BRANCH
fi
