#!/usr/bin/env bash

mv .git .disabled_git
./build-scripts/clone_sdk.sh guest-dart-sdk
./build-scripts/dart.sh
./build-scripts/git.sh guest-dart-sdk

./build-scripts/clone_sdk.sh guest-typescript-sdk
./build-scripts/typescript-angular.sh
./build-scripts/git.sh guest-typescript-sdk

./build-scripts/clone_sdk.sh guest-swift-sdk
./build-scripts/swift.sh
./build-scripts/git.sh guest-swift-sdk

./build-scripts/clone_sdk.sh guest-objc-sdk
./build-scripts/objc.sh
./build-scripts/git.sh guest-objc-sdk

./build-scripts/clone_sdk.sh guest-android-sdk
./build-scripts/android.sh
./build-scripts/git.sh guest-android-sdk
mv .disabled_git .git