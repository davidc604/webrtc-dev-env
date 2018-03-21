# webrtc-dev-env
Dockerfile for WebRTC development environment.

From Ubuntu 16.04 LTS.

Installs the following additional packages and libraries.

* OpenJDK & OpenJRE 8
* Chromium dev packages
* Chromium required runtime libs
* Packages for NaCl (Native Client) builds and toolchains
* ARM cross toolchain packages
* MESA dev packages
* Debugging symbols for runtime libs

A script for fetching the WebRTC repo will be at   
``` $HOME/scripts/fetch-webrtc.sh ```

An additional script for synching Chromium repo will be setup at   
``` $HOME/scripts/sync-chromium.sh ```

A script for building WebRTC Unity plugin example
``` ./scripts/build-webrtc-unity.sh ```

Please note that initial gclient sync of Chromium repo may take >30 minutes depending on network connection.

Due to the issue with docker [#16429](https://github.com/docker/docker/issues/16429), if need to mount any folders, probably need to run with command   
```docker run --cap-add=SYS_ADMIN --security-opt apparmor:unconfined```
