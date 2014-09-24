#
# Configuration information for TET.
#
# $Id$
#

.include "${SRCTOP}/mk/elftoolchain.base.mk"

# Set TET_ROOT and version.
TET_VERSION?=	3.8
TET_ROOT?=	${OBJTOP}/test/tet/tet${TET_VERSION}

TET_SITE=	http://tetworks.opengroup.org/downloads
TET_VER=	${TET_VERSION:S/.//}
TET_FILE=	tet${TET_VERSION}-src.tar.gz
TET_URL=	${TET_SITE}/${TET_VER}/software/Sources/${TET_VERSION}/${TET_FILE}

# The directory where test journals are placed.
TET_RESULTS_DIR?=	results

# The temporary directory used by TET.
TET_TMP_DIR?=		tet_tmp_dir

.include <bsd.obj.mk>
