
#CFLAGS = -g
#CFLAGS_LIB = -g -c
CFLAGS = -Wno-pointer-sign -g
CFLAGS_LIB = -Wno-pointer-sign -g -c
CC = gcc
LD = ld
AR = ar

all:  zpipe

zpipe: zpipe.c
	$(CC) $(CFLAGS) zpipe.c -lz -o zpipe

distclean: 
clean: 
	rm -f zpipe.o zpipe 

install:
	install -m 755 zpipe /usr/local/sbin
	
uninstall:
	rm -f /usr/local/sbin/zpipe 
