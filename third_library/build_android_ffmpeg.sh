#!/bin/bash
export NDK_ROOT=/Users/tianpeng/tools/android-ndk-r14b # 修改自己本地的ndk路径

if [ $# -eq 1 ];then
  case $1 in
    "armv7")
      sh build_android_ffmpeg_armv7.sh
      ;;
    "armv8")
      sh build_android_ffmpeg_armv8.sh
      ;;
    "all")
      sh build_android_ffmpeg_armv7.sh
      sh build_android_ffmpeg_armv8.sh
      ;;
    *)
      echo "You should input the correct args."
    ;;
  esac
else
  echo "You should input only one args."
fi