#
# $Id$
#

# Implicit rules for the M4 pre-processor.

.SUFFIXES:	.m4 .c
.m4.c:
	m4 -D SRCDIR=${.CURDIR} ${M4FLAGS} ${.IMPSRC} > ${.TARGET}

