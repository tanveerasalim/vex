LDLIBS := -lncurses
CFLAGS := -g -Wall

all: vex
clean:
	rm -f *.o main

vex: main.o
	$(CC) $< $(LDLIBS) -o $@

.PHONY: all clean
