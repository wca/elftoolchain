#
# $Id$
#

# OS specific build instructions

.if !defined(OS_HOST)

# Determine the host operating system flavor.
OS_HOST != uname -s

.include "${SRCTOP}/mk/elftoolchain.base.mk"

# Bring in OS-specific Makefiles, if they exist
.if exists(${SRCTOP}/mk/os.${OS_HOST}.mk)
.include "${SRCTOP}/mk/os.${OS_HOST}.mk"
.endif

# Bring in per-subproject OS-specific Makefiles, if they exist
.if exists(${.CURDIR}/os.${OS_HOST}.mk)
.include "${.CURDIR}/os.${OS_HOST}.mk"
.endif

# Supply an OS-specific "clobber" rule, if one was not specified.
.if !target(os-specific-clobber)
os-specific-clobber: .PHONY
.endif
.endif
