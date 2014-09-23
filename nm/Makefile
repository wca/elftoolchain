
# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

PROG=	nm
SRCS=	nm.c

WARNS?=	6

LDADD=	-ldwarf -lelftc -lelf

.include "${SRCTOP}/mk/elftoolchain.prog.mk"
