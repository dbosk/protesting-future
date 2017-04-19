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

protesting.pdf: ${SRC}
protesting.pdf: libbib.sty
protesting.pdf: crypto.bib otrmsg.bib
protesting.pdf: ppes.bib
protesting.pdf: ac.bib
protesting.pdf: location.bib
protesting.pdf: reputation.bib
protesting.pdf: auth.bib
protesting.pdf: osn.bib
protesting.pdf: privacy.bib
protesting.pdf: surveillance.bib
protesting.pdf: depend.bib
protesting.pdf: anon.bib
protesting.pdf: be.bib
protesting.pdf: mpc.bib
protesting.pdf: stats.bib
protesting.pdf: protests.bib
protesting.pdf: voting.bib
protesting.pdf: adhocnets.bib

wc: ${SRC}
$(foreach f,${SRC},$(eval PREWC-${f}=detex))

todo: ${SRC}

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
