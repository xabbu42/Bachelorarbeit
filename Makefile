
PANDOC=--standalone --number-sections --smart --parse-raw --include-in-header ./header.tex --biblio literatur.bib --natbib

.DELETE_ON_ERROR:

all: arbeit.pdf #notizen.pdf essay.pdf 

arbeit.latex : arbeit.md Makefile header.tex literatur.bib
	pandoc $(PANDOC) -t latex $< | perl -pne 's/APPENDIX/\\begin{appendix}/; s/\\end{document}/\\end{appendix}\n\\end{document}/;' > $@

%.latex : %.md Makefile header.tex literatur.bib
	pandoc $(PANDOC) -t latex $< > $@

%.pdf : %.latex Makefile literatur.bib
	latexmk -quiet -pdf -f $< && touch $@

%.html : %.md Makefile
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex *.bbl *-blx.bib

distclean : clean
	-rm notizen.pdf essay.pdf arbeit.pdf
