#! /bin/bash

gcc -g3 -fno-inline mult1.c -O3  -o m$1


/usr/bin/time -p -o time00 ./m$1 > /dev/null
/usr/bin/time -p -o time01 ./m$1 > /dev/null
/usr/bin/time -p -o time02 ./m$1 > /dev/null
/usr/bin/time -p -o time03 ./m$1 > /dev/null
/usr/bin/time -p -o time04 ./m$1 > /dev/null

mkdir Times/$1
mv time0* Times/$1/
