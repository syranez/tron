VERSION = 1.0
CC      = /usr/bin/gcc
CFLAGS  = -Wall -g -D_REENTRANT -DVERSION=\"$(VERSION)\"

OBJ = tron.o

BIN = tron

tron: src/$(OBJ) 
	$(CC) $(CFLAGS) -o $(BIN) src/$(OBJ)

all: tron 

.PHONY: clean
clean:
	rm -rf $(BIN) $(OBJ)

install: tron 
	mv tron /usr/bin/
