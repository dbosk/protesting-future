.PHONY: all
all: protesting.pdf

SRC+=	protesting.tex abstract.tex
SRC+= 	intro.tex before.tex during.tex after.tex
SRC+=	UserSearch.tex
SRC+=	EventInvitations.tex

protesting.pdf: ${SRC}
protesting.pdf: llncs libbib.sty
protesting.pdf: crypto.bib otrmsg.bib
protesting.pdf: ppes.bib
protesting.pdf: ac.bib
protesting.pdf: location.bib
protesting.pdf: reputation.bib
protesting.pdf: auth.bib
protesting.pdf: osn.bib
protesting.pdf: privacy.bib

wc: ${SRC}

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
