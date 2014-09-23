# $Id$

TOP=	${.CURDIR}/..

PROG=	elfdump
WARNS?=	6

DPADD=	${LIBELFTC} ${LIBELF}
LDADD=	-lelftc -lelf

.include "${TOP}/mk/elftoolchain.prog.mk"
