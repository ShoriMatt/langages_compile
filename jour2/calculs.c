#include <stdio.h>

int main(void) {
    int a = 17;
    int b = 5;

    printf("a = %d, b = %d\n", a, b);
    printf("Somme : %d\n", a + b);
    printf("Difference : %d\n", a - b);
    printf("Produit : %d\n", a * b);
    printf("Quotient : %d (entier), %.2f (flottant)\n", a / b, (float)a / b);
    printf("Reste : %d\n", a % b);

    return 0;
}