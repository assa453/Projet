// main.dart

// Importations nécessaires (si besoin)

// Partie 1 : Variables et Listes/Maps
void variablesEtListes() {
  // Variables
  String nom = "Assata";
  int age = 23;
  double pi = 3.14;
  bool isFlutterAwesome = true;
  final String nomComplet = "Assata diallo";
  const int vitesseLumiere = 299792458;

  // Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  // Maps
  Map<String, dynamic> etudiant = {"Assata": "Assata", "age": 23, "classe": "DFE4"};
  etudiant["p4"] = 85;
}

// Partie 2 : Fonctions
void fonctions() {
  // Fonction bonjour
  void bonjour(String nom) {
    print("Bonjour, $nom!");
  }
  bonjour("Assata");

  // Fonction addition
  int addition(int a, int b) {
    return a + b;
  }
  print(addition(5, 7));
}

// Partie 3 : Structures de contrôle
void structuresDeControle() {
  int nombre = 5;

  // Conditions
  if (nombre > 0) {
    print("Nombre positif");
  } else if (nombre < 0) {
    print("Nombre négatif");
  } else {
    print("Nombre zéro");
  }

  // Boucles
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // Gestion des exceptions
  double division(int a, int b) {
    if (b == 0) throw Exception("Division par zéro");
    return a / b;
  }
  try {
    print(division(10, 0));
  } catch (e) {
    print(e);
  }
}

// Partie 4 : Classes
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);

  // Getters et Setters
  String get getNom => nom;
  set setNom(String nouveauNom) => nom = nouveauNom;

  int get getAge => age;
  set setAge(int nouvelAge) => age = nouvelAge;
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// Partie 5 : Modules (inclure directement ici)
int carre(int nombre) {
  return nombre * nombre;
}

// Partie 6 : Concepts asynchrones
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

void conceptsAsynchrones() async {
  String resultat = await fetchData();
  print(resultat);
}

void main() {
  // Appeler chaque partie pour tester
  variablesEtListes();
  fonctions();
  structuresDeControle();

  // Tester les classes
  Personne personne = Personne("Assata", 23);
  print("Nom: ${personne.getNom}, Age: ${personne.getAge}");

  Etudiant etudiant = Etudiant("Assata", 23, "DFE4");
  print("Classe: ${etudiant.classe}");

  // Tester la fonction carré
  print("Carré de 5: ${carre(5)}");

  // Tester les concepts asynchrones
  conceptsAsynchrones();
}
