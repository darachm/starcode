OBJECTS= trie.o starcode.o
#CFLAGS= -std=c99 -Wall -g -Wall -O3
CFLAGS= -std=c99 -Wall -g -Wall
LDLIBS= -lm -lpthread
CC= gcc

all: starcode tquery

tquery: $(OBJECTS) main-tquery.c
	$(CC) $(CFLAGS) $(OBJECTS) main-tquery.c $(LDLIBS) -o tquery

starcode: $(OBJECTS) main-starcode.c

clean:
	rm -f $(OBJECTS) starcode tquery
