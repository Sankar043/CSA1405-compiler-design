#include <stdio.h>
#include <stdbool.h>

int main() {
    char ch, prev_ch = '\0';
    bool in_comment = false;

    while ((ch = getchar()) != EOF) {
        if (in_comment) {
            if (prev_ch == '*' && ch == '/')
                in_comment = false;
        } else {
            if (ch == '/') {
                if (prev_ch == '/')
                    in_comment = true;
            } else if (!in_comment && ch != ' ' && ch != '\t') {
                putchar(ch);
            }
        }
        prev_ch = ch;
    }

    return 0;
}
