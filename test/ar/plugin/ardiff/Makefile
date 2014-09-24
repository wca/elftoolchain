# $Id$

RELPATH=../../../..
SRCTOP=	${.CURDIR}/${RELPATH}

.include "${SRCTOP}/mk/elftoolchain.os.mk"

PROG=	ardiff
MAN=

WARNS?=	6

DPADD=	${LIBARCHIVE}
LDADD=	-larchive
CFLAGS+=-Wno-error=deprecated-declarations

.include "${SRCTOP}/mk/elftoolchain.prog.mk"
