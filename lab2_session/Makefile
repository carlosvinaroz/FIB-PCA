all: pi.O0 pi.O1 pi.O2 pi.O3 pi.O0.pg

pi.O0:
	gcc -O0 pi.c -o pi.O0
pi.O1:
	gcc -O1 pi.c -o pi.O1
pi.O2:
	gcc -O2 pi.c -o pi.O2
pi.O3:
	gcc -O3 pi.c -o pi.O3
pi.O0.pg:
	gcc -pg -g pi.c -o pi.O0.pg
clean:
	-rm pi.O0 pi.O1 pi.O2 pi.O3 pi.O0.pg
