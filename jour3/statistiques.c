#include <stdio.h>

int main(void) {
    // 1. Declare un tableau de 8 notes (entiers) initialisees en dur 
    int notes[8] = {12, 15, 9, 18, 14, 10, 16, 13};

    // 2. Calcule et affiche : la somme, la moyenne, la note minimum et la note maximum  
    int somme = 0;
    int min = notes[0];
    int max = notes[0];

    for (int i = 0; i < 8; i++) {
        somme += notes[i];
        if (notes[i] < min) {
            min = notes[i];
        }
        if (notes[i] > max) {
            max = notes[i];
        }
    }

    float moyenne = (float)somme / 8;

    printf("Somme : %d\n", somme);
    printf("Moyenne : %.2f\n", moyenne);
    printf("Note minimum : %d\n", min);
    printf("Note maximum : %d\n", max);

    return 0;
}
