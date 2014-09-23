# $Id$

RELPATH=..
SRCTOP=	${.CURDIR}/${RELPATH}

PROG=	elfcopy

SRCS=	archive.c ascii.c binary.c main.c sections.c segments.c symbols.c

WARNS?=	5

DPADD=	${LIBELF} ${LIBELFTC}
LDADD=	-lelf -lelftc

.if !defined(LIBELF_AR)
LDADD+= -larchive -lz
.endif

MAN=	elfcopy.1 mcs.1 strip.1

NO_SHARED?=	yes

LINKS=	${BINDIR}/elfcopy ${BINDIR}/strip 	\
	${BINDIR}/elfcopy ${BINDIR}/mcs

EXTRA_TARGETS=	strip mcs

CLEANFILES+=	${EXTRA_TARGETS}

# Create in-place symbolic links to "elfcopy" at build time.

all:	${EXTRA_TARGETS}

${EXTRA_TARGETS}:	${PROG}
	ln -s ${PROG} ${.TARGET}

.include "${SRCTOP}/mk/elftoolchain.prog.mk"

CFLAGS+=-Wno-error=deprecated-declarations

.if ${OS_HOST} == "OpenBSD"
CFLAGS+=	-I/usr/local/include
LDFLAGS+=	-L/usr/local/lib
.endif
