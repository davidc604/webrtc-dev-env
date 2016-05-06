# webrtc-dev-env
Dockerfile for WebRTC development environment.

From Ubuntu 14.04 LTS.

Installs the following additional packages and libraries.

* OpenJDK & OpenJRE 7
* Chromium dev packages
* Chromium required runtime libs
* Packages for NaCl (Native Client) builds and toolchains
* ARM cross toolchain packages
* MESA dev packages
* Debugging symbols for runtime libs

The gclient file is included at   
``` /opt/scripts/gclient.webrtc ```

A script for synching Chromium repo will be setup at   
``` /opt/scripts/sync-chromium.sh ```

Please note that initial gclient sync of Chromium repo may take >30 minutes depending on network connection.

Due to the issue with docker [#16429](https://github.com/docker/docker/issues/16429), if need to mount any folders, probably need to run with command   
```docker run --cap-add=SYS_ADMIN --security-opt apparmor:unconfined```
