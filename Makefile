.PHONY: all wc
all: protesting.pdf

protesting.pdf: protesting.tex
protesting.pdf: llncs libbib.sty
protesting.pdf: crypto.bib otrmsg.bib
protesting.pdf: ppes.bib
protesting.pdf: ac.bib
protesting.pdf: location.bib
protesting.pdf: reputation.bib
protesting.pdf: auth.bib
protesting.pdf: privacy.bib

wc: protesting.tex
	for f in $^; do echo -n "$${f}: "; detex $${f} | wc -w; done

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
