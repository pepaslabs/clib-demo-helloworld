BIN = helloworld

DEPS = $(wildcard deps/*/*.c)
SRCS = $(wildcard src/*.c)
OBJS = $(DEPS:.c=.o) $(SRCS:.c=.o)

CFLAGS = -std=c99 -Wall
INCLUDES = -Isrc $(foreach dir,$(wildcard deps/*),-I$(dir))
CC = cc

default: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS) $(BIN)

.PHONY: default clean
