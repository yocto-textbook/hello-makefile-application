#include "hello-makefile-library.h"

int main(void) {
    int i;

    for (i = 0; i < 10; i++) {
        hello_makefile_library();
    }

    return 0;
}
