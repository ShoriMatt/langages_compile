// etudiant.cpp — Classe Etudiant avec constructeur, methodes, RAII
// Compilation : g++ -Wall -std=c++17 etudiant.cpp -o etudiant

#include <iostream>
#include <string>
#include <limits>

// ============================================================
// Declaration + definition de la classe Etudiant
// ============================================================
class Etudiant {
private:
    std::string nom;
    int         age;
    double      moyenne;
    int         nb_notes;   // pour recalculer la moyenne

public:
    // Constructeur avec liste d'initialisation
    Etudiant(std::string n, int a, double m)
        : nom(n), age(a), moyenne(m), nb_notes(1) {}

    // Destructeur (rien a liberer ici, mais bonne habitude)
    ~Etudiant() {}

    // ---- Methodes ----

    // Recalcule la moyenne en ajoutant une nouvelle note
    void ajouterNote(double note) {
        moyenne = (moyenne * nb_notes + note) / (nb_notes + 1);
        nb_notes++;
    }

    bool estMajeur() const {
        return age >= 18;
    }

    void afficher() const {
        std::cout << "  Nom     : " << nom << std::endl;
        std::cout << "  Age     : " << age << " ans ("
                  << (estMajeur() ? "majeur" : "mineur") << ")" << std::endl;
        std::cout << "  Moyenne : " << moyenne << std::endl;
    }

    // ---- Getters ----
    std::string getNom()     const { return nom; }
    double      getMoyenne() const { return moyenne; }
};

// ============================================================
// Utilitaire : lire un double proprement
// ============================================================
double lireDouble(const std::string &invite) {
    double val;
    while (true) {
        std::cout << invite;
        if (std::cin >> val) { return val; }
        std::cout << "  Valeur invalide, reessayez." << std::endl;
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }
}

// ============================================================
// main
// ============================================================
int main() {
    const int NB = 5;

    // Tableau de pointeurs alloues sur le heap (new / delete[])
    Etudiant **etudiants = new Etudiant*[NB];

    std::cout << "=== Saisie des " << NB << " etudiants ===" << std::endl;

    for (int i = 0; i < NB; i++) {
        std::cout << "\n-- Etudiant " << (i + 1) << " --" << std::endl;

        std::string nom, prenom;
        int age;
        double moy;

        std::cout << "  Nom    : "; std::cin >> nom;
        std::cout << "  Age    : "; std::cin >> age;
        moy = lireDouble("  Moyenne initiale : ");

        // Construction sur le heap
        etudiants[i] = new Etudiant(nom, age, moy);
    }

    // Affichage de tous les etudiants
    std::cout << "\n=== Recapitulatif de la promotion ===" << std::endl;
    for (int i = 0; i < NB; i++) {
        std::cout << "\nEtudiant " << (i + 1) << " :" << std::endl;
        etudiants[i]->afficher();
    }

    // Moyenne de la promotion
    double somme = 0.0;
    for (int i = 0; i < NB; i++) {
        somme += etudiants[i]->getMoyenne();
    }
    double moyPromo = somme / NB;
    std::cout << "\nMoyenne de la promotion : " << moyPromo << std::endl;

    // Meilleur etudiant
    int meilleur = 0;
    for (int i = 1; i < NB; i++) {
        if (etudiants[i]->getMoyenne() > etudiants[meilleur]->getMoyenne()) {
            meilleur = i;
        }
    }
    std::cout << "\nMeilleur etudiant : " << etudiants[meilleur]->getNom()
              << " (" << etudiants[meilleur]->getMoyenne() << ")" << std::endl;

    // Liberation memoire (RAII : destructeur appele par delete)
    for (int i = 0; i < NB; i++) {
        delete etudiants[i];
    }
    delete[] etudiants;
    etudiants = nullptr;

    return 0;
}
