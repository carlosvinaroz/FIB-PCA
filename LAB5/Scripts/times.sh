#! /bin/bash

/usr/bin/time -p -o time00 ./$1 > /dev/null
/usr/bin/time -p -o time01 ./$1 > /dev/null
/usr/bin/time -p -o time02 ./$1 > /dev/null
/usr/bin/time -p -o time03 ./$1 > /dev/null
/usr/bin/time -p -o time04 ./$1 > /dev/null

mkdir Times/$2
mv time0* Times/$2/
