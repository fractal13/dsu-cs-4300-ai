BASE := final

view: $(BASE).pdf
	evince $^

all: $(BASE).pdf

REAL_FILES := \
	$(BASE).tex \
	$(BASE)-problems.tex \
	$(BASE)-title.tex \
	$(BASE)-metadata.tex \
	$(BASE)-rules.tex \
	\
	rubiks_heuristic.tex rubiks_dot.tex rubiks_algorithms.tex \
	jetan_quiescence.tex jetan_evaluation.tex \
	wumpus_probability.tex wumpus_nirvana.tex

$(BASE).pdf: \
  $(REAL_FILES)
	pdflatex -shell-escape $<
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi
	if egrep Rerun $*.log ; then pdflatex -shell-escape $* ; fi

clean:
	-rm -f *.aux *.log *.dvi *~

nuke:
	make clean
	-rm -f *.ps *.pdf
