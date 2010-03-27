
PANDOC=-s -R --csl apa.csl --biblio mendeley.xml --biblio-format mods

all: notizen.pdf essay.pdf

mendeley.xml: ../library.bib Makefile
	bibclean $< | bibtool -f '%n(author)%4d(year)' -s | bib2xml > $@

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
