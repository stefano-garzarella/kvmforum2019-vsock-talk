# Makefile to build vsock graphs

FIGS := pdf/vsock-perf-patches-h2g.pdf

.PHONY: clean clean-all-pdf

all: $(FIGS)

pdf/%.pdf: %.plot data/%.dat *.plot.in
	gnuplot $*.plot

clean:
	rm $(FIGS)

clean-all-pdf:
	rm pdf/*.pdf
