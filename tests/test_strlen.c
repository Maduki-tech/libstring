#include <stdio.h>
#include "libstring.h"

int main (){
    const char *msg = "Hello, Arch!";
    printf("Lenght of '%s' = '%zu'\n", msg, my_strlen(msg));
    return 0;
}
