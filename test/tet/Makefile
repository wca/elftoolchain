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
TET_EXTRACT_MARKER=	.tet-extract-done

.MAIN:	all

.PHONY:	all clean depend test fetch extract

#
# The TET source tree was present.
#

all: ${TET_BUILD_MARKER}

${TET_BUILD_MARKER}: ${TET_PATCH_MARKER}
	cd ${TET_ROOT} && sh ./configure -t lite
	cd ${TET_ROOT}/src && ${MAKE} -j1 all install
	touch ${TET_BUILD_MARKER}

${TET_PATCH_MARKER}: ${TET_EXTRACT_MARKER}
	for f in ${.CURDIR}/patches/*.patch; do	\
		patch -p0 < $${f};	\
	done
	touch ${TET_PATCH_MARKER}

clean:
	rm -f ${TET_BUILD_MARKER} ${TET_PATCH_MARKER} ${TET_EXTRACT_MARKER}
	rm -rf ${TET_ROOT}

cleandepend depend test:	.SILENT
	true

fetch: ${TET_FILE}
	@true

extract: ${TET_EXTRACT_MARKER}
	@true

${TET_FILE}:
	fetch -o ${TET_FILE} ${TET_URL}

${TET_EXTRACT_MARKER}: ${TET_FILE}
	mkdir -p ${TET_ROOT}
	tar -C ${TET_ROOT} --strip-components=1 -xvf ${TET_FILE}
	touch ${TET_EXTRACT_MARKER}
