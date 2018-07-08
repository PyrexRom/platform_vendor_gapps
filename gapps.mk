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

# /app
PRODUCT_PACKAGES += \
    CalculatorGooglePrebuilt \
    GoogleContacts \
    CalendarGooglePrebuilt \
    FaceLock \
    GoogleCamera \
    GoogleContactsSyncAdapter \
    GoogleDialer \
    GoogleTTS \
    talkback \
    GoogleVrCore \
    PrebuiltBugle \
    PrebuiltDeskClockGoogle \
    Ornament \
    WallpaperPickerGooglePrebuilt \
    Turbo

PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2017 \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.android.dialer.support

# /priv-app
PRODUCT_PACKAGES += \
    AmbientSensePrebuilt \
    AndroidMigratePrebuilt \
    CarrierSetup \
    ConfigUpdater \
    ConnMetrics \
    GmsCoreSetupPrebuilt \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    NexusLauncherPrebuilt \
    Phonesky \
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

# Include package overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/gapps/overlay/

# Dumpstate
#skip prop entrys on project treble devices
ifeq ($(filter marlin sailfish walleye taimen,$(TARGET_PRODUCT)),)
# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5 \
    ro.wallpapers_loc_request_suw=true
endif

#telephony permissions
PRODUCT_COPY_FILES_OVERRIDES += \
    vendor/gapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/gapps/priv-app/CarrierConfig/CarrierConfig.apk:system/priv-app/CarrierConfig/CarrierConfig.apk \
    vendor/gapps/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

$(call inherit-product, vendor/gapps/gapps-blobs.mk)
