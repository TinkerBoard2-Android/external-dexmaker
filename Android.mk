# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Build a test APK
#
# Run the tests as follows:
# m -j DexmakerTests && \
#      adb install -r $OUT/testcases/DexmakerTests/DexmakerTests.apk && \
#      adb shell am instrument -w com.linkedin.dexmaker

LOCAL_PACKAGE_NAME := DexmakerTests
LOCAL_SDK_VERSION := current

LOCAL_MODULE_TAGS := tests
LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)

LOCAL_STATIC_JAVA_LIBRARIES := dexmaker-tests-lib dexmaker android-support-test junit

include $(BUILD_PACKAGE)

include $(call all-makefiles-under, $(LOCAL_PATH))
