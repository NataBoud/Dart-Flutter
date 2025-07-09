### `dart:io` **n'est pas disponible dans DartPad**

DartPad est un environnement d’exécution **dans le navigateur**, et donc **n’a pas accès aux bibliothèques orientées I/O système** comme :

* `dart:io` (console, fichiers, sockets…)
* `dart:ffi` (interopérabilité native)
* `dart:html` (dans un projet console ou Flutter)


On simule les appels avec des données fixes dans `main()` :

```dart
void main() {
  List<Map<String, dynamic>> livres = [];

  // Ajout simulé
  ajouterLivre(livres, '1984', 'George Orwell', 1949, true);
  ajouterLivre(livres, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 1943, false);

  // Affichage
  afficherLivres(livres);

  // Recherche simulée
  rechercherLivre(livres, '1984');

  // Suppression simulée
  supprimerLivre(livres, '1984');

  // Affichage final
  afficherLivres(livres);
}

void ajouterLivre(List<Map<String, dynamic>> livres, String titre, String auteur, int annee, bool lu) {
  livres.add({
    'titre': titre,
    'auteur': auteur,
    'annee': annee,
    'lu': lu,
  });
}

void afficherLivres(List<Map<String, dynamic>> livres) {
  if (livres.isEmpty) {
    print('Aucun livre enregistré.');
    return;
  }

  for (var livre in livres) {
    print('${livre['titre']} de ${livre['auteur']} (${livre['annee']}) - Lu : ${livre['lu'] ? "Oui" : "Non"}');
  }
}

void rechercherLivre(List<Map<String, dynamic>> livres, String titreRecherche) {
  final livre = livres.firstWhere(
    (l) => l['titre'].toLowerCase() == titreRecherche.toLowerCase(),
    orElse: () => {},
  );

  if (livre.isEmpty) {
    print('Livre non trouvé.');
  } else {
    print('Livre trouvé : ${livre['titre']} de ${livre['auteur']}');
  }
}

void supprimerLivre(List<Map<String, dynamic>> livres, String titre) {
  livres.removeWhere((l) => l['titre'].toLowerCase() == titre.toLowerCase());
  print('Livre supprimé si trouvé.');
}
```
