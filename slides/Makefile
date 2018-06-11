.PHONY: all
all: slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

notes.pdf: notes.tex
notes.pdf: ${SRC}

slides.pdf: slides.tex
slides.pdf: ${SRC}

FIGS+= 	ProtestVerif-join.png
FIGS+= 	ProtestVerif-participating.png
FIGS+= 	ProtestVerif-endprotest.png
FIGS+= 	ProtestVerif-verifying.png
FIGS+= 	ProtestVerif-verified.png
FIGS+= 	ProtestVerif-UN.png
FIGS+= 	trump.jpg

ProtestVerif-join.png: ../ProtestVerif/art/ProtestVerif-join.png
ProtestVerif-participating.png: ../ProtestVerif/art/ProtestVerif-participating.png
ProtestVerif-endprotest.png: ../ProtestVerif/art/ProtestVerif-endprotest.png
ProtestVerif-verified.png: ../ProtestVerif/art/ProtestVerif-verified.png
ProtestVerif-verifying.png: ../ProtestVerif/art/ProtestVerif-verifying.png
ProtestVerif-UN.png:../ProtestVerif/art/ProtestVerif-UN.png
trump.jpg: 			../ProtestVerif/fig/trump.jpg

${FIGS}:
	${LN} $< $@

slides.pdf: 		${FIGS}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf
	${RM} ${FIGS}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

../%:
	${MAKE} -C $(dir $@) $(notdir $@)
