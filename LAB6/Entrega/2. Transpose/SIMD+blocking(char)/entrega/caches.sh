#! /bin/bash

mkdir perf/$1

perf record --event cache-misses -F 500 ./$1 $2 > /dev/null
perf report --stdio -n --header > perf/$1/cache_misses.txt

perf record --event L1-dcache-load-misses -F 500 ./$1 $2 > /dev/null
perf report --stdio -n --header > perf/$1/L1D_load_misses.txt

perf record --event L1-dcache-store-misses -F 500 ./$1 $2> /dev/null
perf report --stdio -n --header > perf/$1/L1D_store_misses.txt

perf record --event dTLB-load-misses -F 500 ./$1 $2> /dev/null
perf report --stdio -n --header > perf/$1/TLBd_load_misses.txt

perf record --event dTLB-store-misses -F 500 ./$1 $2> /dev/null
perf report --stdio -n --header > perf/$1/TLBd_store_misses.txt


