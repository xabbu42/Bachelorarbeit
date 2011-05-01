
PANDOC=--standalone --table-of-contents --number-sections --smart --parse-raw --biblio literatur.bib --natbib

all: arbeit.pdf #notizen.pdf essay.pdf 

arbeit.latex : arbeit.md Makefile literatur.bib templ.tex
	pandoc $(PANDOC) --template templ.tex -t latex $< | perl -pne 's/APPENDIX/\\begin{appendix}/; s/\\end{document}/\\end{appendix}\n\\end{document}/;' > $@

%.latex : %.md Makefile header.tex literatur.bib
	pandoc $(PANDOC) --include-in-header header.tex -t latex $< > $@

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
