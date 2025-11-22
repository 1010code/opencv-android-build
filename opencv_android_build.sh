OPENCV_SRC=$PWD/opencv
OPENCV_CONTRIB=$PWD/opencv_contrib
OPENCV_BUILD=$PWD/opencv-android-build  # output folder
ANDROID_SDK=$HOME/Library/Android/sdk
ANDROID_NDK=$ANDROID_SDK/ndk/27.0.12077973  # change to your ndk folder  ls ~/Library/Android/sdk/ndk/
CONFIG_FILE=$PWD/ndk-27.config.py  # adjust to match your NDK version

mkdir -p $OPENCV_BUILD
cd $OPENCV_BUILD

if [ -d "$ANDROID_SDK/cmdline-tools/latest" ]; then
  if [ ! -d "$ANDROID_SDK/tools" ]; then
    echo "Creating symlink for cmdline-tools"
    ln -s "$ANDROID_SDK/cmdline-tools/latest" "$ANDROID_SDK/tools"
  fi
fi

python3 $OPENCV_SRC/platforms/android/build_sdk.py \
    $OPENCV_BUILD \
    $OPENCV_SRC \
    --ndk_path $ANDROID_NDK \
    --sdk_path $ANDROID_SDK \
    --extra_modules_path $OPENCV_CONTRIB/modules \
    --config $CONFIG_FILE \
    --use_android_buildtools \
    --no_samples_build