#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m'

SDK_NAME=$1

printf "${GREEN}Cloning git@github.com:tractionguest/$SDK_NAME.git${NC}\n"
git clone git@github.com:tractionguest/$SDK_NAME.git
cd $SDK_NAME
git ls-remote --exit-code --heads  git@github.com:tractionguest/$SDK_NAME.git $GITHUB_REF_NAME
if [ "$?" == "1" ] ; then
  printf "${GREEN}Checking out EXISTING branch $GITHUB_REF_NAME${NC}\n"

  git checkout $GITHUB_REF_NAME
  git pull
else
  printf "${GREEN}Creating branch $GITHUB_REF_NAME${NC}\n"
  git checkout -b $GITHUB_REF_NAME
fi
