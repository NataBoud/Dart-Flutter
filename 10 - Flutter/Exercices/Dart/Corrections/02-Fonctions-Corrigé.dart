import 'dart:io';

// Liste des livres
List<Map<String, dynamic>> livres = [];

void main() {
  bool quitter = false;

  while (!quitter) {
    print('\n=== Bibliothèque virtuelle ===');
    print('1 - Ajouter un livre');
    print('2 - Afficher tous les livres');
    print('3 - Rechercher un livre par titre');
    print('4 - Supprimer un livre par titre');
    print('5 - Quitter');
    stdout.write('Votre choix : ');
    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        ajouterLivre();
        break;
      case '2':
        afficherLivres(livres);
        break;
      case '3':
        rechercherLivre();
        break;
      case '4':
        supprimerLivre();
        break;
      case '5':
        print('À bientôt !');
        quitter = true;
        break;
      default:
        print('Choix invalide, veuillez réessayer.');
    }
  }
}

// Ajoute un livre dans la liste
void ajouterLivre() {
  stdout.write('Titre du livre : ');
  String? titre = stdin.readLineSync();

  stdout.write('Auteur : ');
  String? auteur = stdin.readLineSync();

  stdout.write('Année : ');
  int? annee = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Lu (true/false) : ');
  bool? lu = stdin.readLineSync()?.toLowerCase() == 'true';

  if (titre != null && auteur != null && annee != null) {
    livres.add({
      'titre': titre,
      'auteur': auteur,
      'annee': annee,
      'lu': lu,
    });
    print('Livre ajouté avec succès !');
  } else {
    print('Données invalides.');
  }
}

// Affiche tous les livres
void afficherLivres(List<Map<String, dynamic>> livres) {
  if (livres.isEmpty) {
    print('Aucun livre enregistré.');
    return;
  }

  print('\nListe des livres :\n');
  for (var livre in livres) {
    print('Titre  : ${livre['titre']}');
    print('Auteur : ${livre['auteur']}');
    print('Année  : ${livre['annee']}');
    print('Lu     : ${livre['lu'] ? "Oui" : "Non"}');
    print('---');
  }
}

// Recherche un livre
void rechercherLivre() {
  stdout.write('Titre à rechercher : ');
  String? titre = stdin.readLineSync();

  if (titre != null) {
    final livre = livres.firstWhere(
      (l) => l['titre'].toLowerCase() == titre.toLowerCase(),
      orElse: () => {},
    );

    if (livre.isEmpty) {
      print('Livre non trouvé.');
    } else {
      print('\nLivre trouvé :');
      print('Titre  : ${livre['titre']}');
      print('Auteur : ${livre['auteur']}');
      print('Année  : ${livre['annee']}');
      print('Lu     : ${livre['lu'] ? "Oui" : "Non"}');
    }
  }
}

// Supprime un livre par titre
void supprimerLivre() {
  stdout.write('Titre à supprimer : ');
  String? titre = stdin.readLineSync();

  if (titre != null) {
    livres.removeWhere((l) => l['titre'].toLowerCase() == titre.toLowerCase());
    print('🗑️ Livre supprimé si trouvé.');
  }
}
