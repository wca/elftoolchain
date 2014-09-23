#
# Libelf by Example
#
# $Id$

RELPATH=../..
SRCTOP=	${.CURDIR}/${RELPATH}

DOC=	libelf-by-example

SRCS=	libelf-by-example.tex prog1.txt prog2.txt prog3.txt \
	prog4.txt prog5.txt prog6.txt

.include "${SRCTOP}/mk/elftoolchain.tex.mk"

.if ${OS_HOST} == "Linux"
EXTRA_LIBS=	-lbsd
.endif

check-example-syntax: .PHONY
.for f in ${SRCS:Mprog*}
	@c=$$(basename ${f} .txt).c; sed -e 's/@[^@]*@//' \
		${.CURDIR}/${f} > ${.OBJDIR}/$${c}; \
	echo -n $${c} ' '; cc -I${SRCTOP}/common \
		-I${SRCTOP}/libelf ${.OBJDIR}/$${c} \
		-L${OBJTOP}/libelf -lelf ${EXTRA_LIBS} && \
		rm ${.OBJDIR}/$${c} a.out
.endfor
	@echo
