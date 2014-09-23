#
# Configuration information for TET.
#
# $Id$
#

.include "${SRCTOP}/mk/elftoolchain.base.mk"

# Set TET_ROOT and version.
TET_VERSION?=		3.8
TET_ROOT?=		${SRCTOP}/test/tet/tet${TET_VERSION}

TET_DOWNLOAD_URL=	\
	http://tetworks.opengroup.org/downloads/38/software/Sources/${TET_VERSION}/tet${TET_VERSION}-src.tar.gz

# The directory where test journals are placed.
TET_RESULTS_DIR?=	results

# The temporary directory used by TET.
TET_TMP_DIR?=		tet_tmp_dir

.include <bsd.obj.mk>
