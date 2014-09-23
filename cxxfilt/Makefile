# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

PROG=	c++filt
SRCS=	cxxfilt.c

WARNS?=	6

DPADD=	${LIBELFTC} ${LIBELF}
LDADD=	-lelftc -lelf

MAN1=	c++filt.1

.include "${SRCTOP}/mk/elftoolchain.prog.mk"
