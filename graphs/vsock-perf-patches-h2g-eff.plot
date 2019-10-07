load 'vsock.plot.in'
load 'vsock-perf-patches-eff.plot.in'

set title "VSOCK efficiency host -> guest"

set output 'pdf/vsock-perf-patches-h2g-eff.pdf'

plot [32:] [0:]  'data/vsock-perf-patches-h2g-eff.dat' title "" ps 0, \
    '' using 1:2 title "before opt." with linespoints ls 1, \
    '' using 1:3 title "patch 1: extra copy for small packets" with linespoints ls 2, \
    '' using 1:4 title "patches 2+3: reduce credit update messages" with linespoints ls 3, \
    '' using 1:5 title "patches 4+5: allow up to 64KB messages queued" with linespoints ls 4
