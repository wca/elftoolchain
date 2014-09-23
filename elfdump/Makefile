# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

PROG=	elfdump
WARNS?=	6

DPADD=	${LIBELFTC} ${LIBELF}
LDADD=	-lelftc -lelf

.include "${SRCTOP}/mk/elftoolchain.prog.mk"
