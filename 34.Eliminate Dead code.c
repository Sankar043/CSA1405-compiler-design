#include <stdio.h>

int calculateSum(int a, int b) {
    return a + b;
}

void displayResult(int result) {
    printf("Result: %d\n", result);
}

int main() {
    int num1 = 5, num2 = 10;
    int sum = calculateSum(num1, num2);

    // displayResult(sum); // This line is dead code and never gets executed.

    return 0;
}
