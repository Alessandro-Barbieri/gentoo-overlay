# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6


SCM=""
if [ "${PV#9999}" != "${PV}" ] ; then
        SCM="git-r3"
        EGIT_REPO_URI="https://github.com/amarburg/libactive_object.git"
fi

inherit ${SCM} cmake-utils eutils toolchain-funcs

DESCRIPTION="G3log is an asynchronous, crash safe, logger that is easy to use with default logging sinks 
or you can add your own."
HOMEPAGE="https://github.com/KjellKod/g3log"

if [ "${PV#9999}" != "${PV}" ] ; then
        SRC_URI=""
        KEYWORDS=""
else
	SRC_URI="https://github.com/KjellKod/g3log/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm"
fi

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

#RDEPEND=""
#DEPEND=""

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		)
	cmake-utils_src_configure
}
