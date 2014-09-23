# $Id$

RELPATH=	../..
SRCTOP=	${.CURDIR}/${RELPATH}

ELFCOPY=	${SRCTOP}/elfcopy/elfcopy

TEST_LOG=	test.log

.MAIN:	all

.PHONY:	clobber execute test

execute test: ${ELFCOPY}
	/bin/sh run.sh

clobber:	clean
	rm -f ${TEST_LOG}

SUBDIR=		plugin

.include "${SRCTOP}/mk/elftoolchain.subdir.mk"
