LATEX=xelatex
BIBTEX=bibtex
THESISFILE=thesis
REDUCEDFILE=thesis-reduced

.PHONY: all clean

all:
	rm -f thesis.out
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(BIBTEX) $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	$(LATEX)  $(THESISFILE)
	# Correct TOC
	sed -i -e "/appendix/s/Chapter/Appendix/" $(THESISFILE).toc
	# Correct PDF bookmarks
	sed -i -e "/appendix/s/Chapter/Appendix/" $(THESISFILE).out
	$(LATEX)  $(THESISFILE)

clean:
	rm -f *.bbl *.blg *.out *.lof *.log *.aux *.lot *.toc *.toc-e *.out-e
	rm -f thesis.pdf

