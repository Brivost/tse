# Makefile for pageiotest.c
#
# authors Joseph Harrington (joseph.d.harrington.ug@dartmouth.edu)
#         Brian Provost (brian.r.provost.22@dartmouth.edu)
#         Tian Xia (tian.xia.ug@dartmouth.edu)
CFLAGS=-Wall -pedantic -std=c11 -I ../ -L ../../lib -g
LIBS=-lutils -lcurl

all: pageiotest

pageiotest:
	gcc $(CFLAGS) pageiotest.c $(LIBS) -o $@

VALGRIND = valgrind --leak-check=full --show-leak-kinds=all
memtest: pageiotest
	$(VALGRIND) ./pageiotest

clean:
	rm pageiotest 1