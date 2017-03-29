SUMMARY = "JUCE OS image."

LICENSE = "MIT"

JUCE_CORE_DEPS = " \
  alsa-lib \
  curl \
"

CORE_IMAGE_EXTRA_INSTALL = " \
  alsa-utils \
  lrzsz \
  kernel-modules \
  ${JUCE_CORE_DEPS} \
"

IMAGE_FEATURES = " \
  debug-tweaks \
  ssh-server-dropbear \
"

# 3.5 GiB extra space for samples and so on
IMAGE_ROOTFS_EXTRA_SPACE = "3670016"

inherit core-image
