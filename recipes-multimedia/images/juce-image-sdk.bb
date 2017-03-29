require juce-image.bb

DESCRIPTION = "JUCE OS image with SDK for JUCE applications."

IMAGE_FEATURES += " \
  dev-pkgs \
  tools-sdk \
  tools-debug \
  eclipse-debug \
  tools-profile \
  debug-tweaks \
  ssh-server-dropbear \
"

IMAGE_INSTALL += "kernel-devsrc"

TOOLCHAIN_HOST_TASK += "nativesdk-projucer"
