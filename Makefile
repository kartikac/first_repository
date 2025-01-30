CC = gcc
CFLAGS = -Wall -Wextra -g
SRC = main.c
OBJ = $(SRC:.c=.o)
BIN = bin/my_program

all: $(BIN)

$(BIN): $(OBJ)
	@mkdir -p bin
	$(CC) $(CFLAGS) -o $(BIN) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ) $(BIN)

test:
	./bin/my_program --test  # Adjust for your test framework

