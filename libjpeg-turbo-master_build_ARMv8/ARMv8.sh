    # Set these variables to suit your needs
    NDK_PATH=/Users/ziqimo/Downloads/androidNDK/android-ndk-r16b
    TOOLCHAIN=gcc
    ANDROID_VERSION=21

    cd /Users/ziqimo/Downloads/meinv/libjpeg-turbo-master_build_ARMv8
    cmake -G"Unix Makefiles" \
      -DANDROID_ABI=arm64-v8a \
      -DANDROID_ARM_MODE=arm \
      -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
      -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
      -DCMAKE_ASM_FLAGS="--target=aarch64-linux-android${ANDROID_VERSION}" \
      -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
      [additional CMake flags] /Users/ziqimo/Downloads/meinv/libjpeg-turbo-master
    make