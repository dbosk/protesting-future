.PHONY: all
all: protesting.pdf

FILES=		protesting.tex
FILES+= 	intro.tex before.tex during.tex after.tex

protesting.pdf: ${FILES}
protesting.pdf: llncs libbib.sty
protesting.pdf: crypto.bib otrmsg.bib
protesting.pdf: ppes.bib
protesting.pdf: ac.bib
protesting.pdf: location.bib
protesting.pdf: reputation.bib
protesting.pdf: auth.bib
protesting.pdf: osn.bib

wc: ${FILES}

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
