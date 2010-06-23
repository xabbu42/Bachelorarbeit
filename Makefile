
PANDOC=--standalone --smart --parse-raw --custom-header ../tex/pandoc_header.latex

all: notizen.pdf essay.pdf arbeit.pdf

mendeley.xml: mendeley.bib Makefile
	bib2xml < $< > $@

mendeley.bib: ../library.bib Makefile
	cp $< $@
#cat $< | bibtool -f '%n(author)%4d(year)' -s  > $@

# notizen.md: .phony
#	wget -N 'http://exporty2.appspot.com/export?waveId=googlewave.com!w%252B9lHTRHebA&accesstoken=5db1662646853b9b&template=raw' -O $@
#
# .phony:

%.latex : %.md Makefile ../tex/pandoc_header.latex mendeley.xml
	pandoc $(PANDOC) -C ../tex/pandoc_header.latex -t latex $< | iconv -f utf-8 -t latin1 > $@

%.pdf : %.latex Makefile
	latexmk -pdf $<

%.html : %.md Makefile mendeley.xml
	pandoc $(PANDOC) -t html $< > $@

.PRECIOUS : %.latex

clean :
	-latexmk -c *.latex
	-rm *.out *.latex

distclean : clean
	-rm notizen.pdf essay.pdf mendeley.xml mendeley.bib
