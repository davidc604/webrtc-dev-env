#!/bin/bash

# fetch-webrtc.sh
#
# Fetch WebRTC
#
# Created by David Chen <ksb2go@gmail.com>
# All rights reserved. 2016.

echo "NOTICE: Due to bug 5578 you may have to press ‘y’ to accept a license dialog for downloading Google Play Services SDK."
echo "The dowload will take a long time because it downloads the whole Chromium repository and dependencies, which are several gigabytes."
echo "Do not interrupt this step or you may need to start all over agan (a new gclient sync may be enough, but you might also need to start over cleanly)."

# Create WebRTC folder
mkdir -p /home/root/webrtc

pushd /home/root/webrtc

# Fetch the webrtc source
fetch --nohooks webrtc

# run gclient sync
gclient sync
