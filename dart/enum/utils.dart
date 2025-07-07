// Fonctions utilitaires

import 'dart:io';

String lireTexteObligatoire(String label) {
  String valeur = '';
  while (valeur.trim().isEmpty) {
    // Afficher 'Titre du livre : '
    stdout.write('$label : ');
    // Attend que l’utilisateur tape qqh
    valeur = stdin.readLineSync() ?? '';
    if (valeur.trim().isEmpty) {
      print('❌ Le champ ne peut pas être vide.');
    }
  }
  return valeur;
}

int lireEntierDansPlage(String label, int min, int max) {
  int? valeur;
  while (valeur == null || valeur < min || valeur > max) {
    stdout.write('$label ($min-$max) : ');
    String? input = stdin.readLineSync();
    valeur = int.tryParse(input ?? '');

    if (valeur == null) {
      print('❌ Veuillez entrer un nombre entier valide.');
    } else if (valeur < min || valeur > max) {
      print('❌ Entrez un nombre entre $min et $max.');
      valeur = null; // On réinitialise pour relancer la boucle
    }
  }
  return valeur;
}


bool lireOuiNon(String label) {
  while (true) {
    stdout.write('$label : ');
    String? reponse = stdin.readLineSync()?.toLowerCase();
    if (reponse == 'y') return true;
    if (reponse == 'n') return false;
    print('❌ Merci de répondre par "y" ou "n".');
  }
}
