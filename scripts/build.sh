#!/bin/bash

# 设置 Electron 镜像源以解决网络问题
export ELECTRON_MIRROR=https://npmmirror.com/mirrors/electron/
export ELECTRON_BUILDER_BINARIES_MIRROR=https://npmmirror.com/mirrors/electron-builder-binaries/

# 执行构建命令
npm run build