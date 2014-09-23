# $Id$

RELPATH=../../../..
SRCTOP=	${.CURDIR}/${RELPATH}

.include "${SRCTOP}/mk/elftoolchain.os.mk"

PROG=	ardiff

NOMAN=	noman

WARNS?=	6

DPADD=	${LIBARCHIVE}
LDADD=	-larchive

.include "${SRCTOP}/mk/elftoolchain.prog.mk"
