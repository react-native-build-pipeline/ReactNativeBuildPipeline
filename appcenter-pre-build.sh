#!/usr/bin/env bash

if [ "$APPCENTER_BRANCH" != "master" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeBuildPipeline/Info.plist
fi

echo "Changing ios bundle identifier"
plutil -replace CFBundleIdentifier -string "io.rangle.reactnativepipeline" $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeBuildPipeline/Info.plist

