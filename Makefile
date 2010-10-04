
PANDOC=--standalone --smart --parse-raw --custom-header ../tex/pandoc_header.latex

all: notizen.pdf essay.pdf arbeit.pdf

%.latex : %.md Makefile ../tex/pandoc_header.latex 
	pandoc $(PANDOC) -C ../tex/pandoc_header.latex -t latex $< | iconv -f utf-8 -t latin1 > $@

%.pdf : %.latex Makefile library.bib
	latexmk -pdf -f $<

%.html : %.md Makefile
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex *.bbl

distclean : clean
	-rm notizen.pdf essay.pdf mendeley.xml mendeley.bib
