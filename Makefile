#This file is for Compile test.

CC = gcc
CFLAGS = -W
LIB = -lpthread

hello : main.o
    $(CC) $(CFLAGS) -o hello.exe main.o -g $(LIB)

main.o : main.c
    $(CC) $(CFLAGS) -c main.c -g
	
clean :
	rm hello.exe
