#include <iostream>
#include <string>

class Point {
private:
    double x; // attributs caches (encapsulation)
    double y;
public:
    // Constructeur : appele a la creation d'un Point
    Point(double xi, double yi) { x = xi; y = yi; }
    // Methodes : actions sur l'objet
    double getX() const { return x; }
    double getY() const { return y; }
    void afficher() const {
        std::cout << "(" << x << ", " << y << ")\n";
    }
};

class Compteur {
private:
    int valeur;
    int *historique; // tableau dynamique
    int taille;
public:
    Compteur(int n) { // CONSTRUCTEUR
        valeur = 0; taille = n;
        historique = new int[n]; // alloue sur le tas
        std::cout << "Compteur cree\n";
 }
 ~Compteur() { // DESTRUCTEUR
    delete[] historique; // libere la memoire
    std::cout << "Compteur detruit\n";
 }
 void incrementer() { valeur++; }
 int lire() const { return valeur; }
};

class Etudiant {
    std::string nom;
    int age; double moyenne;
public:
    Etudiant(std::string n, int a) : nom(n), age(a), moyenne(0.0) {}
    void ajouterNote(double note) { moyenne = (moyenne + note) / 2.0; }
    bool estMajeur() const { return age >= 18; }
    void afficher()  const {
        std::cout << nom << " (" << age << " ans)"
                  << " - moyenne: " << moyenne << "\n";
    }
};

int main() {
    Etudiant matthias("Matthias", 25);
    matthias.ajouterNote(15);
    matthias.ajouterNote(17);
    matthias.afficher();
    if (matthias.estMajeur()) std::cout << "Majeur\n";
    return 0;

    Compteur c(100); // constructeur appele automatiquement
    c.incrementer(); c.incrementer();
    std::cout << c.lire() << "\n"; // Destructeur appele AUTOMATIQUEMENT à la sortie

    Point p1(3.0, 4.0);
    Point p2(10.0, 20.0);
    p1.afficher(); p2.afficher();
    return 0;

    std::string nom;
    std::cout << "Quel est ton nom ? ";
    std::cin >> nom;
    
    std::cout << "Bonjour " << nom << " !" << std::endl;

    int age = 19;
    std::cout << "Tu as " << age << " ans" << std::endl;
    
    return 0;
}
