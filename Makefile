CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

SRC = src/libstring.c
OBJ = ${SRC:.c=.o}

all: test_strlen

test_strlen: $(OBJ) tests/test_strlen.c
	$(CC) $(CFLAGS) -o build/test_strlen $(OBJ) tests/test_strlen.c

clean:
	rm -f src/*.o build/*
