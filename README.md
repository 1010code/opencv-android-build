# 編譯 OpenCV for Android

本文件說明如何自行編譯適用於 Android 平台的 OpenCV 函式庫。

## 步驟

### 1. 下載原始碼

首先，從 GitHub 下載 OpenCV 和 OpenCV Contrib 的 4.5.2 版本原始碼。

```bash
git clone -b 4.5.2 https://github.com/opencv/opencv.git
git clone -b 4.5.2 https://github.com/opencv/opencv_contrib.git
```

### 2. 執行編譯腳本

接著，賦予編譯腳本執行權限並執行它。

```bash
chmod +x opencv_android_build.sh
./opencv_android_build.sh
```

此腳本將會自動處理編譯過程，產生包含 arm64-v8a, armeabi-v7a, x86, 和 x86_64 架構的 Android SDK。編譯完成後，可以在 `opencv-android-build/OpenCV-android-sdk` 目錄下找到所需的 `libopencv_world.so` 檔案以及相關的函式庫。
