#!/bin/bash

# sync_chromium.sh
#
# Setup Chromium folder at /chromium/src
#
# Created by David Chen <ksb2go@gmail.com>
# All rights reserved. 2016.

# Create Chromium folder
mkdir -p /chromium

# copy gclient file
cp ./gclient.webrtc /chromium/.gclient

# Sync Chromium
pushd /chromium
gclient sync
