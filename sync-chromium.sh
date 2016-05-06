#!/bin/bash

# sync-chromium.sh
#
# Setup Chromium folder at /chromium/src
#
# Created by David Chen <ksb2go@gmail.com>
# All rights reserved. 2016.

# Create Chromium folder
mkdir -p /home/root/chromium

# copy gclient file
cp ./gclient.webrtc /home/root/chromium/.gclient

# Sync Chromium
pushd /home/root/chromium
gclient sync
