    # Set these variables to suit your needs
    NDK_PATH=/Users/ziqimo/Downloads/androidNDK/android-ndk-r16b
    TOOLCHAIN=gcc
    ANDROID_VERSION=16

    cd /Users/ziqimo/Downloads/meinv/libjpeg-turbo-master_build_ARMv7
    cmake -G"Unix Makefiles" \
      -DANDROID_ABI=armeabi-v7a \
      -DANDROID_ARM_MODE=arm \
      -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
      -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
      -DCMAKE_ASM_FLAGS="--target=arm-linux-androideabi${ANDROID_VERSION}" \
      -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
      [additional CMake flags] /Users/ziqimo/Downloads/meinv/libjpeg-turbo-master
    make