#
# Build TET from source.
#
# $Id$
#

RELPATH=	../..
SRCTOP=	${.CURDIR}/${RELPATH}

.include "${SRCTOP}/mk/elftoolchain.tetvars.mk"

TET_BUILD_MARKER=	.tet-build-done
TET_PATCH_MARKER=	.tet-patch-done

.MAIN:	all

.PHONY:	all clean clobber depend test

.if exists(${TET_ROOT}/configure)

#
# The TET source tree was present.
#

all: ${TET_BUILD_MARKER}

${TET_BUILD_MARKER}: ${TET_PATCH_MARKER}
	cd ${TET_ROOT} && sh ./configure -t lite
	cd ${TET_ROOT}/src && ${MAKE} all install
	touch ${TET_BUILD_MARKER}

${TET_PATCH_MARKER}:
	for f in ${.CURDIR}/patches/*.patch; do	\
		patch -p0 < $${f};	\
	done
	touch ${TET_PATCH_MARKER}

clean:
	cd ${TET_ROOT}/src && ${MAKE} clean
	rm -f ${TET_BUILD_MARKER}

clobber:
	rm -rf ${TET_ROOT} ${TET_BUILD_MARKER} ${TET_PATCH_MARKER}

cleandepend depend test:	.SILENT
	true

.else

#
# The TET source tree was not detected.
#

all depend test:	.SILENT
	echo "ERROR: The distribution of TET v${TET_VERSION} is missing."
	echo
	echo "Please download the distribution from:"
	echo "	${TET_URL}"
	echo "and unpack it into directory \"${TET_ROOT}\"."
	echo
	echo "You can run 'make fetch extract' from ${.CURDIR} to do this."
	echo
	echo "Otherwise, the tests cannot be run."

fetch: ${SRCTOP}/${TET_FILE}
	@true

extract: ${TET_ROOT}/.extracted
	@true

${SRCTOP}/${TET_FILE}:
	fetch -o ${SRCTOP}/${TET_FILE} ${TET_URL}

${TET_ROOT}/.extracted: ${SRCTOP}/${TET_FILE}
	mkdir -p ${TET_ROOT}
	tar -C ${TET_ROOT} --strip-components=1 -xvf ${SRCTOP}/${TET_FILE}
	@touch ${TET_ROOT}/.extracted

clean clobber:
	rm -f ${TET_BUILD_MARKER} ${TET_PATCH_MARKER}
.endif
