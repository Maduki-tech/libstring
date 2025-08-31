#include <criterion/assert.h>
#include "libstring.h"
#include <criterion/criterion.h>
#include <criterion/internal/assert.h>
#include <criterion/internal/test.h>

Test(strlen, basic){
    cr_assert_eq(my_strlen(""), 0);
    cr_assert_eq(my_strlen("abc"), 3);
}

Test(strcpy, basic){
    char buf[5];
    cr_assert_str_eq(my_strcpy(buf, "hello"), "hello");
}
