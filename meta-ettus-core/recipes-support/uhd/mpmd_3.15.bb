require recipes-support/uhd/uhd_3.15_src.inc
require recipes-support/uhd/mpmd.inc

LIC_FILES_CHKSUM = "file://../host/LICENSE;md5=8255adf1069294c928e0e18b01a16282"

SRC_URI_append = " \
    file://0001-mpm-Add-compile-flag-to-fix-missing-definition.patch;striplevel=2 \
    "
