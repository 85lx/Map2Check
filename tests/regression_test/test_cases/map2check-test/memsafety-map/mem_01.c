#include <stdlib.h>

int *a, *b;

int main ()
{
    a = malloc (12 * sizeof(*a));
    b = malloc (12 * sizeof(*b));
    b = a;
    free(a);
    free(b); // was released
}
