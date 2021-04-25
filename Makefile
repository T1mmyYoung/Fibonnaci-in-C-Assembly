.PHONY: clean
CFLAGS= -ansi -pedantic -O0 -Wall

all: Hw5a1


Hw5a1: Hw5a1.o fibonacci.o
	gcc -g -o Hw5a1 $(CFLAGS) Hw5a1.o fibonacci.o

Hw5a1.o: Hw5a1.c
	gcc -c -g -o Hw5a1.o $(CFLAGS) Hw5a1.c

fibonacci.o: fibonacci.s
	as --64 -o fibonacci.o fibonacci.s

clean:
	rm -f *.o Hw5a1
