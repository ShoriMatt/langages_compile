#include <stdio.h>

int main(void) {
    int choix = 0;
    // demande une note entre 0 et 20

    printf("donnez une note entre 0 et 20 : ");
    scanf("%d", &choix);

    if (choix < 0 || choix > 20) {
        printf("note invalide\n");

    } else if (choix < 10) {
        printf("insuffisant\n");

    } else if (choix < 12) {
        printf("passable\n");

    } else if (choix < 14) {
        printf("assez bien\n");

    } else if (choix < 16) {
        printf("bien\n");
    } 

    if (choix >= 10 && choix <= 20) {
        printf("admis");
    } else {
        printf("refusé");
    }



    return 0;
}