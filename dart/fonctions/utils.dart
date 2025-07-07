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

int lireEntierValide(String label) {
  int? valeur;
  while (valeur == null) {
    stdout.write('$label : ');
    String? input = stdin.readLineSync();
    valeur = int.tryParse(input ?? '');
    if (valeur == null) {
      print('❌ Veuillez entrer un nombre entier valide.');
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
