
PANDOC=--standalone --smart --parse-raw --include-in-header ./header.tex --biblio literatur.bib --natbib

all: notizen.pdf essay.pdf arbeit.pdf

%.latex : %.md Makefile header.tex literatur.bib
	pandoc $(PANDOC) -t latex $< > $@

%.pdf : %.latex Makefile literatur.bib
	latexmk -pdf -f $<

%.html : %.md Makefile
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex *.bbl

distclean : clean
	-rm notizen.pdf essay.pdf arbeit.pdf
