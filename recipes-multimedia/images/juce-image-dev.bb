require juce-image.bb

SUMMARY = "JUCE OS image with dependencies and extra development tools."

CORE_IMAGE_EXTRA_INSTALL += " \
  htop \
  procps \
"

IMAGE_FEATURES += " \
  ssh-server-dropbear \
  dbg-pkgs \
  tools-debug \
  debug-tweaks \
  tools-profile \
"
