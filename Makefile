LATEX=xelatex
BIBTEX=bibtex
THESISFILE=thesis
REDUCEDFILE=thesis-reduced

.PHONY: all clean

all:
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(BIBTEX) $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)

clean:
	rm -f *.bbl *.blg *.out *.lof *.log *.aux *.lot *.toc
	rm -f thesis.pdf
	rm -f thesis-reduced.pdf
	rm -f thesis-reduced-detectorphysics.pdf
	rm -f thesis-reduced-neutrinophysics.pdf
	rm -f thesis-reduced-ca.pdf

reduced:
	$(LATEX)  $(REDUCEDFILE)
	$(LATEX)  $(REDUCEDFILE)
	$(BIBTEX) $(REDUCEDFILE)
	$(LATEX)  $(REDUCEDFILE)
	$(LATEX)  $(REDUCEDFILE)

reduced-%:
	$(LATEX)  $(REDUCEDFILE)-$*
	$(LATEX)  $(REDUCEDFILE)-$*
	$(BIBTEX) $(REDUCEDFILE)-$*
	$(LATEX)  $(REDUCEDFILE)-$*
	$(LATEX)  $(REDUCEDFILE)-$*
