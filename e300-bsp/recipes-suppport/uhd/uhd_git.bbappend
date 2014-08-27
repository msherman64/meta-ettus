SRC_URI = "git://github.com/EttusResearch/uhd-e300-dev.git;branch=e300-devel;protocol=https"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8255adf1069294c928e0e18b01a16282"

SRCREV = "bcd0f26e5d280c4d91da1a69298f2d391f007be4"

PV = "3.7.1+git${SRCPV}"

EXTRA_OECMAKE += " -DENABLE_E300=TRUE"

do_install_append() {
	install -d install -d ${D}${datadir}/uhd/images
	install -m 0644 ${WORKDIR}/git/binaries/usrp_e300_fpga.bit ${D}${datadir}/uhd/images
	install -m 0644 ${WORKDIR}/git/binaries/usrp_e310_fpga.bit ${D}${datadir}/uhd/images
}
