
PANDOC=--standalone --smart --parse-raw --include-in-header ./header.tex --biblio literatur.bib --natbib

.DELETE_ON_ERROR:

all: arbeit.pdf #notizen.pdf essay.pdf 

%.latex : %.md Makefile header.tex literatur.bib
	pandoc $(PANDOC) -t latex $< > $@

%.pdf : %.latex Makefile literatur.bib
	latexmk -quiet -pdf -f $< && touch $@

%.html : %.md Makefile
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex *.bbl

distclean : clean
	-rm notizen.pdf essay.pdf arbeit.pdf
