#
# Rules for building programs.
#
# $Id$

.include "${SRCTOP}/mk/elftoolchain.base.mk"
.include "${SRCTOP}/mk/elftoolchain.os.mk"

LIBDWARF?=	${OBJTOP}/libdwarf
LIBELF?=	${OBJTOP}/libelf
LIBELFTC?=	${OBJTOP}/libelftc

BINDIR?=	/usr/bin

CFLAGS+=	-I. -I${.CURDIR} -I${SRCTOP}/common
CLEANFILES+=	.depend

.if defined(LDADD)
_LDADD_LIBDWARF=${LDADD:M-ldwarf}
.if !empty(_LDADD_LIBDWARF)
CFLAGS+= -I${SRCTOP}/libdwarf
LDFLAGS+= -L${OBJTOP}/libdwarf
.endif

_LDADD_LIBELF=${LDADD:M-lelf}
.if !empty(_LDADD_LIBELF)
CFLAGS+= -I${SRCTOP}/libelf
LDFLAGS+= -L${OBJTOP}/libelf
.endif

_LDADD_LIBELFTC=${LDADD:M-lelftc}
.if !empty(_LDADD_LIBELFTC)
CFLAGS+= -I${SRCTOP}/libelftc
LDFLAGS+= -L${OBJTOP}/libelftc
.endif
.endif

#
# Handle lex(1) and yacc(1) in a portable fashion.
#
# New makefile variables used:
#
# LSRC		-- a lexer definition suitable for use with lex(1)
# YSRC		-- a parser definition for use with yacc(1)

# Use standard rules from <bsd.*.mk> for building lexers.
.if defined(LSRC)
SRCS+=	${LSRC}
.endif

# Handle the generation of yacc based parsers.
# If the program uses a lexer, add an automatic dependency
# on the generated parser header.
.if defined(YSRC)
.for _Y in ${YSRC}
SRCS+=	${_Y:R}.c
CLEANFILES+=	${_Y:R}.c ${_Y:R}.h
${_Y:R}.c ${_Y:R}.h:	${_Y}
	${YACC} -d -o ${_Y:R}.c ${.ALLSRC}

.if defined(LSRC)
.for _L in ${LSRC}
${_L:R}.o:	${_Y:R}.h
.endfor
.endif

.endfor
.endif

.include <bsd.prog.mk>

# Note: include the M4 ruleset after bsd.prog.mk.
.include "${SRCTOP}/mk/elftoolchain.m4.mk"

# Support a 'clobber' target.
clobber:	clean os-specific-clobber .PHONY

.if defined(DEBUG)
CFLAGS:=	${CFLAGS:N-O*} -g
.endif

# Bring in rules related to test code.
.include "${SRCTOP}/mk/elftoolchain.test.mk"
