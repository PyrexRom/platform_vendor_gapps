# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#gapps blobs
$(call inherit-product, vendor/gapps/gapps-blobs.mk)

# /app
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    Chrome \
    FaceLock \
    GoogleCamera \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    Hangouts \
    PlusOne \
    talkback \
    YouTube \
    GoogleVrCore \
    Photos \
    PrebuiltDeskClockGoogle \
    Ornament \
    WallpaperPickerGooglePrebuilt


# messenger skip on tablets
ifeq ($(filter dragon,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

# /framework
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2017 \
    com.google.android.dialer.support \
    com.google.android.maps \
    com.google.android.media.effects

# /priv-app
PRODUCT_PACKAGES += \
    AmbientSensePrebuilt \
    AndroidPlatformServices \
    CarrierSetup \
    ConfigUpdater \
    ConnMetrics \
    GmsCoreSetupPrebuilt \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleLoginService \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PixelLauncher \
    PrebuiltGmsCorePix \
    DynamiteModulesA \
    DynamiteModulesB \
    DynamiteModulesC \
    DynamiteModulesD \
    DynamiteLoader \
    GoogleCertificates \
    SetupWizard \
    Velvet

# /symlinks
PRODUCT_PACKAGES += \
    libfacenet.so \
    libgdx.so \
    libwallpapers-breel-jni.so \
    libjpeg.so

# wallpaper location prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true
