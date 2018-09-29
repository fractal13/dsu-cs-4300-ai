TARGETS := exam1-2018.pdf

all: $(TARGETS)

view: $(TARGETS)
	evince $(TARGETS)

clean:
	rm -f *.aux *.log *.dvi *~

spotless:
	make clean
	rm -f *.ps *.pdf

%.pdf: %.tex exam.sty
	pdflatex -shell-escape $*.tex
	if [ -e $*.mp ] ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
