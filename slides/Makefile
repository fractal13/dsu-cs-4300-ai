# Makefile for Computational Theory LaTeX files

SLIDES := $(sort $(wildcard lecture-[0-9][0-9][0-9]-*.tex))

SRC := $(SLIDES)

TARGETS := $(patsubst %.tex,%.pdf,$(SRC))

INSTALL_DIR := ../../BLAH/2025-40
INSTALL_TARGETS := $(patsubst %.pdf,$(INSTALL_DIR)/%.pdf,$(TARGETS))

all: $(TARGETS)

install: $(INSTALL_TARGETS)

$(INSTALL_DIR)/%.pdf: %.pdf
	cp $< $@

%.pdf: %.tex agentsslides.sty 
	./latex_build.bash $@

clean:
	rm -f mpxerr.tex theory.mpx
	rm -f *.[1-9] *.[1-9][0-9]
	rm -f $(SRC:.tex=.mp)
	rm -f $(SRC:.tex=.log)
	rm -f $(SRC:.tex=.aux)
	rm -f $(SRC:.tex=.mpx)
	rm -f $(SRC:.tex=.nav)
	rm -f $(SRC:.tex=.toc)
	rm -f $(SRC:.tex=.snm)
	rm -f $(SRC:.tex=.out)
	rm -f $(SRC:.tex=.vrb)
	rm -f *~

spotless: clean
	rm -f $(SRC:.tex=.pdf)

install-latex:
	sudo apt install \
		texlive-base \
		texlive-binaries \
		texlive-extra-utils \
		texlive-font-utils \
		texlive-fonts-recommended \
		texlive-latex-base \
		texlive-latex-extra \
		texlive-latex-recommended \
		texlive-luatex \
		texlive-metapost \
		texlive-pictures \
		texlive-plain-generic

