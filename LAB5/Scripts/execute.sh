#! /bin/bash

./munge_vectors8.2 > out8
./munge_vectors16.2 > out16
./munge_vectors32.2 > out32
./munge_vectors64.2 > out64

mv out* Outs/ 
