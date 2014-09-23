# $Id$

RELPATH=	..
SRCTOP=	${.CURDIR}/${RELPATH}

.include "${SRCTOP}/mk/elftoolchain.os.mk"

.if defined(MKNOWEB) && ${MKNOWEB} == "yes" && exists(${NOWEB}) && \
    exists(${PDFLATEX})
SUBDIR+=	build-automation
.endif

.include "${SRCTOP}/mk/elftoolchain.subdir.mk"
