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

correct-bookmarks:
	rm -f thesis.out
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(BIBTEX) $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	patch -p1 < thesis.out.patch
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(BIBTEX) $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)

clean:
	rm -f *.bbl *.blg *.out *.lof *.log *.aux *.lot *.toc
	rm -f thesis.pdf

