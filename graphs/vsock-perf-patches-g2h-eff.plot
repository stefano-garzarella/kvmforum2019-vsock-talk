load 'vsock.plot.in'
load 'vsock-perf-patches-eff.plot.in'

set title "VSOCK efficiency guest -> host"

set output 'pdf/vsock-perf-patches-g2h-eff.pdf'

plot [32:] [0:]  'data/vsock-perf-patches-g2h-eff.dat' title "" ps 0, \
    '' using 1:2 title title1 with linespoints ls 1, \
    '' using 1:3 title title2 with linespoints ls 2, \
    '' using 1:4 title title3 with linespoints ls 3, \
    '' using 1:5 title title4 with linespoints ls 4
