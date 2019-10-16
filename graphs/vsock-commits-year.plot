load 'vsock.plot.in'

#set title "VSOCK commits per year"

set output 'pdf/vsock-commits-year.pdf'

plot [] [0:50] 'data/vsock-commits-year.dat' title "" ps 0, \
    '' using 1:2 title "# commits" with linespoints ls 1

