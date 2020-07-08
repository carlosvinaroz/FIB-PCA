#! /bin/bash

gcc -march=armv7-a -mfpu=neon  $1 -O3  -o Original


./Original $2 > time00.txt
./Original $2 > time01.txt
./Original $2 > time02.txt
./Original $2 > time03.txt
./Original $2 > time04.txt

mkdir Times/SIMD/$2
mv time0* Times/SIMD/$2
