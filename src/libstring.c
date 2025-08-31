#include "libstring.h"
#include <string.h>

size_t my_strlen(const char *str) {
  size_t len = 0;
  while (str[len] != '\0') {
    len++;
  }

  return len;
}

char *my_strcpy(char *dst, const char *src) {

    char *d = dst;
    while ((*d++ = *src++)) {

    
    }
    return dst;

}
