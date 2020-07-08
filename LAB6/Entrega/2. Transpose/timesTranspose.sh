#! /bin/bash

gcc -march=armv7-a -mfpu=neon -DBS=$1 transpositionOpti.c -O3  -o Opti$1


./Opti$1 4096 > time00
./Opti$1 4096 > time01
./Opti$1 4096 > time02
./Opti$1 4096 > time03
./Opti$1 4096 > time04

mkdir Times/$1
mv time0* Times/$1/1
