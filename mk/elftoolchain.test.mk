# $Id$

#
# Rules for invoking test suites.
#

.include "${SRCTOP}/mk/elftoolchain.base.mk"

TEST_DIRECTORY=		test
TEST_TARGET=		test

# The special target 'test' runs the test suite associated with a
# utility or library.
test:	all .PHONY
	cd ${SRCTOP}/${TEST_DIRECTORY}/${.CURDIR:T} && \
	${MAKE} all ${TEST_TARGET}
