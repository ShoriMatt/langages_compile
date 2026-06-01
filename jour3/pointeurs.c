#include <stdio.h>

// Une fonction void min_max(int tab[], int n, int *pmin, int *pmax) qui trouve le minimum et le maximum d'un tableau et les retourne via des pointeurs
void min_max(int tab[], int n, int *pmin, int *pmax) {
    *pmin = tab[0];
    *pmax = tab[0];
    for (int i = 1; i < n; i++) {
        if (tab[i] < *pmin) {
            *pmin = tab[i];
        }
        if (tab[i] > *pmax) {
            *pmax = tab[i];
        }
    }
}

// Une fonction double moyenne(int tab[], int n) qui calcule la moyenne 
double moyenne(int tab[], int n) {
    int somme = 0;
    for (int i = 0; i < n; i++) {
        somme += tab[i];
    }
    return (double)somme / n;
}