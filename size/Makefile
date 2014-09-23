# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

PROG=   size
WARNS?= 6
LDADD=  -lelftc -lelf
DPADD=	${LIBELFTC} ${LIBELF}

.include "${SRCTOP}/mk/elftoolchain.prog.mk"

