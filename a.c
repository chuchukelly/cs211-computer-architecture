#include <stdio.h>
#include <stdlib.h>

int main (int argc, char **argv){
    if (argc < 2) {
        puts ("You should have said your name."); 
        return EXIT_FAILURE;
    }
    printf( "Hello, %s. \n", argv[1]);
    return EXIT_SUCCESS;
}