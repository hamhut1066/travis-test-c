SOURCES:=main.c
OBJECTS:=$(SOURCES:.c=.o)

all: $(OBJECTS)
	gcc -std=c99 -lm main.o -o a.out

.c.o:
	gcc -std=c99 -lm -c $< -o $@

clean:
	rm *.o a.out
