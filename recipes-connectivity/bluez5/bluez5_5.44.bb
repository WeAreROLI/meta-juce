require recipes-connectivity/bluez5/bluez5_5.41.bb

FILESEXTRAPATHS_prepend := "recipes-connectivity/bluez5/bluez5:"

DEPENDS += "alsa-lib"
EXTRA_OECONF += "--enable-midi --enable-deprecated"

SRC_URI[md5sum] = "94273617129ced06612fcb9f5273d14c"
SRC_URI[sha256sum] = "0c321e291f8b45e6a78e379dfe80592b65955a0f0ab191f1cca0edd8ec356c85"
