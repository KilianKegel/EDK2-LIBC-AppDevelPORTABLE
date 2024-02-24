#include <stdio.h>

int main(int argc, char** argv) {
    int i;
    void* p;


    printf("\nDemonstration of argument count and vector capability of the EDK2-LIBC\n\n");

    for (i = 0; i < argc; i++)
        printf("|%s", argv[i]);
    printf("|\nArgument count is: %d\n\n", argc);

    printf("--> stdout: %p\n", (p = stdout,p));
    printf("--> NULL  : %p\n", (p = NULL, p));

    p = fopen("test.log", "w");
    printf("--> fopen : %p\n", p);
}