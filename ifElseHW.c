#include <stdio.h> 
#include <stdlib.h>

int main (int argc, char *argv[]){
    int x = atoi(argv[1]);
    int y;
    if(x == 4){
        y = x + 20;
    } else if (x <= 6 || x > 9){
        if(x != 0){
            if(x != -1){
                y = 99;
            } else {
                y = -44;
            }
        } else {
            y = 44;
        }
    } else {
        y = x + 20;
    }
    printf("%d\n", y);

    return 0;
}