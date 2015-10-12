.PHONY: all
all: protesting.pdf

protesting.pdf: protesting.tex
protesting.pdf: llncs libbib.sty surveillance.bib

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
