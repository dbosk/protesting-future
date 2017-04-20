.PHONY: all
all: protesting.pdf

SRC+=	protesting.tex
SRC+=	abstract.tex
# intro
SRC+= 	intro.tex
SRC+=	sybil.tex
SRC+=	terrorists.tex
# before
SRC+=	before.tex
SRC+=	UserSearch.tex
SRC+=	PairwiseComm.tex
SRC+=	OTPKX.tex
SRC+=	discussions.tex
SRC+=	DecentAC.tex
SRC+=	EventInvitations.tex
SRC+=	passwd.tex
# during
SRC+=	during.tex
SRC+=	AdhocNetworks.tex
# after
SRC+=	after.tex
SRC+=	DataAuthenticity.tex
SRC+=	ProtestVerif.tex
# conclusion
SRC+=   conclusion.tex
# appendix
SRC+=	bios.tex

DEPEND+=libbib.sty
DEPEND+=crypto.bib otrmsg.bib
DEPEND+=ppes.bib
DEPEND+=ac.bib
DEPEND+=location.bib
DEPEND+=reputation.bib
DEPEND+=auth.bib
DEPEND+=osn.bib
DEPEND+=privacy.bib
DEPEND+=surveillance.bib
DEPEND+=depend.bib
DEPEND+=anon.bib
DEPEND+=be.bib
DEPEND+=mpc.bib
DEPEND+=stats.bib
DEPEND+=adhocnets.bib

protesting.pdf: ${SRC}
protesting.pdf: ${DEPEND}

wc: ${SRC}
$(foreach f,${SRC},$(eval PREWC-${f}=detex))

todo: ${SRC}
	@grep "\(XXX\|TODO\|FIXME\)" $^

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
