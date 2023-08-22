#include <stdio.h>

int main() {
    int a = 10, b = 5, c = 7, d;
    int temp = a + b; // Common subexpression
    d = temp * temp - temp * c;
    printf("Result: %d\n", d);
    return 0;
}
