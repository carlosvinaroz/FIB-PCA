#!/bin/bash

for i in {0..400000..20000}
do
	/usr/bin/time -f "%e" ./empleats.3 $i > /dev/null
done
