#include <stdio.h>

int main(void) {
}

// Retourne le plus petit des deux 
int Minimum(int a, int b) {
    if (a < b) {
        return a;
        printf("%d", a);
    } else {
        return b;
        printf("%d", b);
    }
    
}

// Retourne le plus grand des deux 
int Maximum(int a, int b) {
    if (a > b) {
        return a;
        printf("%d", a);
    } else {
        return b;
        printf("%d", b);
    }
}

// Retourne la valeur absolue 
int Valeur_absolue(int nombre) {
    if (nombre < 0) {
        return -nombre;
        printf("%d", -nombre);
    } else {
        return nombre;
        printf("%d", nombre);
    }
}

// Retourne 1 si pair, 0 sinon
int Est_pair(int nombre) {
    if (nombre % 2 == 0) {
        return 1;
        printf("pair");
    } else {
        return 0;
        printf("impair");
    }
}

// Calcule n! (iteratif avec une boucle) 
int Factorielle(int nombre) {
    if (nombre < 0) {
        return -1;
    } else if (nombre == 0 || nombre == 1) {
        return 1; // Factorielle de 0 et 1 = 1
        printf("1");
    } else {
        int result = 1;
        for (int i = 2; i <= nombre; i++) {
            result *= i;
        }
        return result;
        printf("%d", result);
    }
}