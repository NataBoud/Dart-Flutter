import 'dart:io';
import 'utils.dart';

List<Map<String, dynamic>> bibliotheque = [];

void afficherMenu() {
  print('\n=== Bibliothèque virtuelle ===');
  print('1 - Ajouter un livre');
  print('2 - Afficher tous les livres');
  print('3 - Rechercher un livre par titre');
  print('4 - Supprimer un livre par titre');
  print('5 - Quitter');
}

void main() {
  while (true) {
    afficherMenu();
    stdout.write('Votre choix : ');
    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1': ajouterLivre();
        break;
      case '2': afficherLivres();
        break;
      case '3': rechercherLivre();
        break;
      case '4': supprimerLivre();
        break;
      case '5': print('👋 Au revoir !');
        return;
      default: print('❌ Choix invalide. Réessayez.');
    }
  }
}

// Ajouter un livre 
void ajouterLivre() {
  String titre = lireTexteObligatoire('Titre du livre');
  String auteur = lireTexteObligatoire('Auteur');
  int annee = lireEntierValide('Année du livre');
  bool lu = lireOuiNon('Le livre a-t-il été lu ? (y/n)');

  final livre = {'titre': titre, 'auteur': auteur, 'annee': annee, 'lu': lu};

  bibliotheque.add(livre);
  print('✅ Livre ajouté avec succès !');
}

// Afficher les livres
void afficherLivres() {
  if (bibliotheque.isEmpty) {
    print('📚 Aucun livre dans la bibliothèque.');
    return;
  }

  for (var livre in bibliotheque) {
    print('\n📖 Titre : ${livre['titre']}');
    print('Auteur : ${livre['auteur']}');
    print('Année : ${livre['annee']}');
    print('Lu : ${livre['lu'] ? '✅' : '❌'}');
  }
}

// Rechercher un livre
void rechercherLivre() {
  stdout.write('Titre à rechercher : ');
  String? titre = stdin.readLineSync();

  var livre = bibliotheque.firstWhere(
    (l) => l['titre'].toString().toLowerCase() == titre?.toLowerCase(),
    orElse: () => <String, dynamic>{},
  );

  if (livre.isNotEmpty) {
    print('\n🔎 Livre trouvé :');
    print('Titre : ${livre['titre']}');
    print('Auteur : ${livre['auteur']}');
    print('Année : ${livre['annee']}');
    print('Lu : ${livre['lu'] ? '✅' : '❌'}');
  } else {
    print('❌ Livre non trouvé.');
  }
}

// Supprimer un livre
void supprimerLivre() {
  stdout.write('Titre à supprimer : ');
  String? titre = stdin.readLineSync();

  var initialLength = bibliotheque.length;
  bibliotheque.removeWhere(
    (l) => l['titre'].toString().toLowerCase() == titre?.toLowerCase(),
  );

  if (bibliotheque.length < initialLength) {
    print('\n🗑️ Livre supprimé.');
  } else {
    print('❌ Aucun livre avec ce titre.');
  }
}

