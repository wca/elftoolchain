#
# Rules for recursing into directories
# $Id$

# Pass down 'test' as a valid target.

.include "${SRCTOP}/mk/elftoolchain.base.mk"
.include "$(SRCTOP)/mk/elftoolchain.os.mk"

.if ${OS_HOST} == DragonFly
clobber test:: _SUBDIR
.elif ${OS_HOST} == FreeBSD
SUBDIR_TARGETS+=	clobber test
.elif ${OS_HOST} == OpenBSD
clobber test:: _SUBDIRUSE
.else		# NetBSD, pmake on Linux
TARGETS+=	cleandepend clobber test
.endif

.include <bsd.subdir.mk>
