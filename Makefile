
all:  zpipe

zpipe: zpipe.c
	gcc -g zpipe.c -lz -o zpipe

clean: 
	rm -f zpipe.o zpipe 
