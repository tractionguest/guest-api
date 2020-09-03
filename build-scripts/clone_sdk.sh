#!/usr/bin/env bash

SDK_NAME=$1
git clone git@github.com:tractionguest/$SDK_NAME.git
cd $SDK_NAME
git ls-remote --exit-code --heads  git@github.com:tractionguest/$SDK_NAME.git $CIRCLE_BRANCH
if [ "$?" == "1" ] ; then
  echo "Checking out existing branch $CIRCLE_BRANCH"
  git checkout $CIRCLE_BRANCH
  git pull
else
  echo "Creating branch $CIRCLE_BRANCH"
  git checkout -b $CIRCLE_BRANCH
fi
