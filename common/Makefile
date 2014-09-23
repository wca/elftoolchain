# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

INCS=	elfdefinitions.h
INCSDIR=/usr/include

.PHONY:	all clean clobber depend obj

all depend obj:

clean clobber:
	rm -f ${CLEANFILES}

cleandepend:
	rm -f .depend

.include "${SRCTOP}/mk/elftoolchain.inc.mk"
