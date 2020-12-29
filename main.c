#include <stdio.h>
#include <string.h>

#define SIZE_BUF 20

char buff[SIZE_BUF]__attribute__((section("my_section")));

int main() {
    strcpy(buff, "Hello, world!\n");
    printf("%s", buff);
    return 0;
}
