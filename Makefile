#
# Makefile to build omnikstats
#    
SRCS := $(wildcard *.c)

BINS := $(SRCS:%.c=%.o)

CC=gcc

CFLAGS= -Wall

LDFLAGS=

LDLIBS=-lm -L/usr/lib/i386-linux-gnu -lcurl

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o

all: build clean

build: $(BINS)
	$(CC) $(CFLAGS) -o omnikstats $(BINS) $(LDFLAGS) $(LDLIBS)

