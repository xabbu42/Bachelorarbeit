
PANDOC=--standalone --smart --parse-raw --include-in-header ./header.latex

all: notizen.pdf essay.pdf arbeit.pdf

%.latex : %.md Makefile header.latex 
	pandoc $(PANDOC) -t latex $< > $@

%.pdf : %.latex Makefile library.bib
	latexmk -pdf -f $<

%.html : %.md Makefile
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex *.bbl

distclean : clean
	-rm notizen.pdf essay.pdf arbeit.pdf
