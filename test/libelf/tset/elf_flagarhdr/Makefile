# $Id$

RELPATH=	../../../..
SRCTOP=	${.CURDIR}/${RELPATH}

TS_SRCS=	flagarhdr.m4

TS_DATA=	a.ar
CLEANFILES+=	a1

a1:	.SILENT
	echo "a1" > ${.TARGET}

a.ar:	a1 .SILENT
	${AR} crv ${.TARGET} a1 > /dev/null

.include "${SRCTOP}/mk/elftoolchain.tet.mk"
