# Copyright (C) 2014 The CyanogenMod Project
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

# EGL config
PRODUCT_COPY_FILES += \
    device/pantech/qcom-common/configs/egl.cfg:system/lib/egl/egl.cfg

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

# Init scripts
PRODUCT_PACKAGES += \
    hcidump.sh \
    init.ath3k.bt.sh \
    init.crda.sh \
    init.qcom.audio.sh \
    init.qcom.bt.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.sh \
    init.qcom.wifi.sh

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
