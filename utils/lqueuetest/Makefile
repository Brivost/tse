# Makefile for lqueuetest.c
#
# authors Joseph Harrington (joseph.d.harrington.ug@dartmouth.edu)
#         Brian Provost (brian.r.provost.22@dartmouth.edu)
#         Tian Xia (tian.xia.ug@dartmouth.edu)
CFLAGS=-pthread -Wall -pedantic -std=c11 -I ../ -L ../../lib -g
LIBS=-lutils -lcurl

all: lqueuetest

lqueuetest:
	gcc $(CFLAGS) lqueuetest.c $(LIBS) -o $@

VALGRIND = valgrind --leak-check=full --show-leak-kinds=all
memtest: lqueuetest
	$(VALGRIND) ./lqueuetest

runtest: lqueuetest
	bash runtest.sh ./lqueuetest

clean:
	rm lqueuetest