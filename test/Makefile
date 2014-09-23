# $Id$
#
# TET-based test suites used by the Elftoolchain project.
#

RELPATH=	..
SRCTOP=	${.CURDIR}/${RELPATH}

# Build TET first.
SUBDIR+=	tet

# Build tests for libraries.
SUBDIR+=	libelf
SUBDIR+=	libelftc
SUBDIR+=	libdwarf

# Build tests for tools.
SUBDIR+=	ar
SUBDIR+=	elfcopy
SUBDIR+=	elfdump
SUBDIR+=	nm

.if !make(install)
.include "${SRCTOP}/mk/elftoolchain.subdir.mk"
.else
install:	.SILENT .PHONY
	echo Nothing to install.
.endif
