# virtio-vsock in QEMU, Firecracker and Linux: Status, Performance and Challenges

This repository contains material used for the ["virtio-vsock in QEMU, Firecracker and Linux: Status, Performance and Challenges - Andra Paraschiv, Amazon Web Services & Stefano Garzarella, Red Hat"](https://sched.co/TmwK) talk at [KVM Forum 2019](https://events.linuxfoundation.org/events/kvm-forum-2019/)

## Graphs
The 'graph' directory contains data and scripts to build the graphs used in the presentation.

### Build
```shell
cd graph
make
# images will be generated in the graph/pdf/ folder
```

### Add new graphs
* Create a new `.plot` file (e.g. `vsock-example.plot`)
  ```shell
  cd graph
  cat << EOF > vsock-example.plot
  load 'vsock.plot.in'
  set title "VSOCK example"
  set output 'pdf/vsock-example.pdf'
  plot 'data/vsock-example.dat'
  EOF
  ```
* Create a new `.dat` file (e.g. `data/vsock-example.dat`)
  ```shell
  cat << EOF > data/vsock-example.dat
  1     1
  2     4
  3     9
  4    16
  5    25
  6    36
  7    49
  8    64
  9    81
  10  100
  EOF
  ```
* Add new elements in the `GRAPHS` variable in the `Makefile`
  ```git
  --- a/graphs/Makefile
  +++ b/graphs/Makefile
  @@ -1,6 +1,7 @@
   # Makefile to build vsock graphs
 
   GRAPHS += vsock-perf-patches-h2g vsock-perf-patches-h2g-zoom
  +GRAPHS += vsock-example
 
   PDFS := $(addprefix pdf/, $(addsuffix .pdf, $(GRAPHS)))
   PNGS := $(addprefix png/, $(addsuffix .png, $(GRAPHS)))
  ```
* Do `make` to generate PDFs and PNGs
  * If your `.plot` generates multiple graphs, please generate one that has the same name as the .plot file and add also others generated graphs to the `GRAPHS` variable in the `Makefile`