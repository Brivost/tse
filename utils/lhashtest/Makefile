# Makefile for lhashtest.c
#
# authors Joseph Harrington (joseph.d.harrington.ug@dartmouth.edu)
#         Brian Provost (brian.r.provost.22@dartmouth.edu)
#         Tian Xia (tian.xia.ug@dartmouth.edu)

CFLAGS=-pthread -Wall -pedantic -std=c11 -I ../ -L ../../lib -g
LIBS=-lutils -lcurl

all: lhashtest

lhashtest:
	gcc $(CFLAGS) lhashtest.c $(LIBS) -o $@

VALGRIND = valgrind --leak-check=full --show-leak-kinds=all
memtest: lhashtest
	$(VALGRIND) ./lhashtest

runtest: lhashtest
	bash runtest.sh ./lhashtest

clean:
	rm lhashtest