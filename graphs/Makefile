# Makefile to build vsock graphs

GRAPHS += vsock-perf-patches-h2g vsock-perf-patches-h2g-zoom

PDFS := $(addprefix pdf/, $(addsuffix .pdf, $(GRAPHS)))
PNGS := $(addprefix png/, $(addsuffix .png, $(GRAPHS)))

.PHONY: clean clean-all-pdf all png

all: pdf png

pdf: $(PDFS)

png: pdf $(PNGS)

pdf/%.pdf: %.plot data/%.dat *.plot.in
	gnuplot $*.plot

png/%.png: pdf/%.pdf
	pdftoppm -png -r 300 -singlefile pdf/$*.pdf png/$*

clean:
	-rm $(PDFS) $(PNGS)
