.PHONY: all
all: protesting.pdf

SRC+=	protesting.tex abstract.tex
SRC+= 	intro.tex
# before
SRC+=	before.tex
SRC+=	UserSearch.tex Gossple.tex
SRC+=	OTPKX.tex
SRC+=	DecentAC.tex
SRC+=	EventInvitations.tex
SRC+=	passwd.tex
# during
SRC+=	during.tex
SRC+=	AdhocNetworks.tex
# after
SRC+=	after.tex

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

wc: ${SRC}

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
