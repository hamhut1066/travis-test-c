SOURCES:=main.c
OBJECTS:=$(SOURCES:.c=.o)

all: $(OBJECTS)
	gcc -std=c99 main.o -lm -o a.out

.c.o:
	gcc -std=c99 -lm -c $< -lm -o $@

clean:
	rm *.o a.out
