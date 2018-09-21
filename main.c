#include<stdio.h>

extern int pthread_test_main(void);

int main()
{
        pthread_test_main();
        printf("Hello world!\n");
}