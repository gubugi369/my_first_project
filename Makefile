#This file is for Compile test.

CC = gcc
CFLAGS = -W
LIB = -lpthread
OBJ = main.o pthread_main.o
RM = del
#RM = rm -f

hello : $(OBJ)
    $(CC) $(CFLAGS) -o hello.exe $(OBJ) -g  $(LIB)

main.o : main.c
    $(CC) $(CFLAGS) -c main.c -g
	
pthread_main.o : pthread_main.c
    $(CC) $(CFLAGS) -c pthread_main.c -g

clean :
    $(RM) hello.exe $(OBJ)
    echo "hello.exe is deleted" 