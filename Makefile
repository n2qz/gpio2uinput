#CC=riscv64-linux-gnu-gcc
CC=gcc

WARN=-Wall
OPTIMIZE=
DEBUG=-g
INCLUDE=-I /usr/include/libevdev-1.0
CFLAGS=$(WARN) $(INCLUDE) $(OPTIMIZE) $(DEBUG) -D_GNU_SOURCE -DPROGRAM_VERSION=\"0.1\"
LIBS=-levdev -lgpiod

.PHONY: all

all: gpio2uinput

gpio2uinput: gpio2uinput.o tools-common.o
	$(CC) gpio2uinput.o tools-common.o -o gpio2uinput $(LIBS)

.PHONY: clean

clean:
	rm -f gpio2uinput *.o *~
