#include <stdio.h>

int main() {
    char input[100];
    int spaces = 0, newlines = 0;

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);

    for (int i = 0; input[i] != '\0'; i++) {
        if (input[i] == ' ') {
            spaces++;
        } else if (input[i] == '\n') {
            newlines++;
        }
    }

    printf("Number of white spaces: %d\n", spaces);
    printf("Number of new lines: %d\n", newlines);

    return 0;
}
