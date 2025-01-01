#include <stdio.h>
#include <add.h>
#include <sub.h>

int main()
{
    int x = 1;
    int y = 1;
    printf("one plus one:  %d\n", add(x, y));
    printf("one minus one: %d\n", sub(x, y));
    printf("HelloWorls!\n");
    return 0;
}