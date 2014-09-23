.if !defined(OBJTOP)

.if !defined(RELPATH)
.error	"Make variable \"RELPATH\" has not been defined."
.endif

SRCTOP=	${.CURDIR}/${RELPATH}
OBJTOP=	${.OBJDIR}/${RELPATH}

.endif
