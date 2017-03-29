FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.4:"

LINUX_VERSION = "4.4.27"

SRCREV = "1c8b82bcb72f95d8f9d606326178192a2abc9c9c"

RPI_CIRRUSLOGIC_PATCHES = " \
  file://0001-ASoC-arizona-Add-32uS-delay-after-putting-FLL-into-f.patch \
  file://0002-ASoC-arizona-Fix-type-of-clock-rate-pointer-in-arizo.patch \
  file://0003-ASoC-arizona-Exit-startup-early-if-no-runtime.patch \
  file://0004-ASOC-RPI-Add-support-for-Cirrus-Audio-Card.patch \
  file://0005-config-RPI-Add-config-support-for-Cirrus-audio-card.patch \
  file://0006-ASoC-RPI-Adding-support-for-Cirrus-B-Audio-Card.patch \
  file://0007-ASOC-dapm-add-param_fixup-callback.patch \
  file://0008-ASoC-RPI-Setting-sampling-rate-on-8804-dai-link-para.patch \
  file://0009-mfd-arizona-Add-DT-binding-for-setting-gpio-for-irq.patch \
  file://0010-mfd-arizona-Add-micdet-ranges-and-polarity-device-tr.patch \
  file://0011-mfd-arizona-Add-DT-entry-for-setting-32kHz-clock-inp.patch \
  file://0012-mfd-arizona-Add-dmic-ref-device-tree-bindings.patch \
  file://0013-ASoC-RPI-Add-support-for-device-tree-for-cirrus-audi.patch \
  file://0014-regulator-arizona-ldo1-Ensure-DCVDD-stays-off-until-.patch \
  file://0015-mfd-arizona-Ensure-minimum-DCVDD-off-period-of-20mS.patch \
  file://0016-cirrus-devicetree-fixes.patch \
  file://0017-cirrus-use-wm8804-reset-line-remove-wm8804-init-code.patch \
  file://0018-cirrus-add-back-poll-for-FLL-disable.patch \
  file://0019-cirrus-access-rtd-by-name.patch \
  file://0020-cirrus-check-for-correct-dapm-dev-in-set_bias_level-.patch \
  file://0021-cirrus-do-all-FLL1-changes-in-set_bias_level-check-c.patch \
  file://0022-cirrus-fix-wrong-playback-rate-when-switching-betwee.patch \
  file://0023-cirrus-add-missing-.owner-field-in-snd_soc_card.patch \
  file://0024-cirrus-silence-probe-deferral-messages-from-register.patch \
  file://0025-cirrus-reorder-devicetree-fragments-so-card-comes-la.patch \
"

SRC_URI += "${@bb.utils.contains('MACHINE_FEATURES', 'rpi-cirruslogic', '${RPI_CIRRUSLOGIC_PATCHES}', '',d)}"
