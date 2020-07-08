#! /bin/bash

mkdir perf/$2

perf record --event cache-misses -F 500 ./$1 > /dev/null
perf report --stdio -n --header > perf/$2/cache_misses

perf record --event L1-dcache-load-misses -F 500 ./$1 > /dev/null
perf report --stdio -n --header > perf/$2/L1D_load_misses

perf record --event L1-dcache-store-misses -F 500 ./$1 > /dev/null
perf report --stdio -n --header > perf/$2/L1D_store_misses

perf record --event dTLB-load-misses -F 500 ./$1 > /dev/null
perf report --stdio -n --header > perf/$2/TLBd_load_misses

perf record --event dTLB-store-misses -F 500 ./$1 > /dev/null
perf report --stdio -n --header > perf/$2/TLBd_store_misses


