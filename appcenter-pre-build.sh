#!/usr/bin/env bash

echo "STARTED PRE BUILD"

if [ "$APPCENTER_BRANCH" != "master" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeBuildPipeline/Info.plist
fi

echo "Changing ios bundle identifier"
plutil -replace CFBundleIdentifier -string "io.rangle.reactnativepipeline" $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeBuildPipeline/Info.plist

echo "FINISHED PRE BUILD"

