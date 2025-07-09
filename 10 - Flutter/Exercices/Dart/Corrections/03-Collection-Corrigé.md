# Correction – TP Collections Dart
## Exercice 1 – Liste des artistes

```dart
void exercice1() {
  List<String> artistes = ['Zaho', 'PNL', 'Orelsan', 'Angèle', 'Stromae'];

  // Ajout d'un nouvel artiste
  artistes.add('Jul');

  // Affichage du premier et du dernier artiste
  print('Premier artiste : ${artistes.first}');
  print('Dernier artiste : ${artistes.last}');

  // Suppression d’un artiste
  artistes.remove('PNL'); // remove supprime la première occurrence

  // Boucle sur la liste
  print('Liste des artistes :');
  for (var artiste in artistes) {
    print('- $artiste');
  }
}
```

* `first` et `last` sont des propriétés utiles pour éviter de manipuler les indices.
* `remove()` ne fait rien si l’élément n’existe pas.
* `for-in` est idiomatique pour les listes en Dart.

---

## Exercice 2 – Catégories musicales (Set)

```dart
void exercice2() {
  Set<String> styles = {'rock', 'jazz', 'électro', 'pop'};

  // Ajout d’un style déjà existant
  styles.add('rock'); // Ignoré, pas d’erreur

  // Suppression
  styles.remove('pop');

  // Vérification
  print('Contient "jazz" ? ${styles.contains('jazz')}');

  // Affichage de tous les styles
  print('Styles musicaux :');
  for (var style in styles) {
    print('- $style');
  }
}
```

* Dart ne permet pas les doublons dans un `Set`, `add()` retourne `false` si l’élément était déjà là.
* Parfait pour des cas comme les tags, les styles ou les catégories.

---

## Exercice 3 – Fiche événement (Map)

```dart
void exercice3() {
  Map<String, dynamic> evenement = {
    'nom': 'Festival Lumières',
    'lieu': 'Lyon',
    'date': '2025-07-15',
    'artistes': ['Zaho', 'Stromae']
  };

  // Modification d’un champ
  evenement['lieu'] = 'Marseille';

  // Accès à la liste des artistes
  List<String> artistes = evenement['artistes'];
  print('Artistes de l’événement : $artistes');

  // Suppression d’une clé
  evenement.remove('date');

  // Parcours de la map
  print('Fiche événement :');
  evenement.forEach((cle, valeur) {
    print('$cle : $valeur');
  });
}
```

* Le type `dynamic` permet de stocker plusieurs types (String, List…), pratique dans une Map complexe.
* `forEach` sur une map donne accès à la clé et la valeur.
* Attention à ne pas accéder à une clé absente sans vérification (risque de null).

---

## Exercice 4 – Scènes et artistes (Map\<String, List<String>>)

```dart
void exercice4() {
  Map<String, List<String>> scenes = {
    'Grande Scène': ['Stromae', 'Zaho'],
    'Scène Indie': ['Angèle'],
  };

  // Affichage avec double boucle
  scenes.forEach((scene, artistes) {
    print('$scene :');
    for (var artiste in artistes) {
      print('- $artiste');
    }
  });

  // Ajout d’un artiste
  scenes['Grande Scène']?.add('Orelsan');

  // Suppression
  scenes['Scène Indie']?.remove('Angèle');
}
```

* Utilisation du null-aware operator `?.` au cas où la clé n’existerait pas.
* `Map<String, List<String>>` permet de grouper des listes sous des clés logiques.
* Structure parfaite pour des affichages en grille ou regroupements.

---

## Exercice 5 – Fonction `afficherProgramme()`

```dart
void afficherProgramme(Map<String, List<String>> scenes) {
  scenes.forEach((scene, artistes) {
    print('$scene :');
    for (var artiste in artistes) {
      print('- $artiste');
    }
    print(''); // saut de ligne
  });
}

// Appel dans main ou autre :
void exercice5() {
  var scenes = {
    'Grande Scène': ['Stromae', 'Zaho', 'Orelsan'],
    'Scène Electro': ['DJ Snake', 'Petit Biscuit'],
  };

  afficherProgramme(scenes);
}
```

* Bon exercice de modularisation.
* `forEach` + `for` imbriqués permettent un affichage hiérarchisé propre.
* Fonction réutilisable pour n’importe quelle map de ce type.

---

## Remarques générales

* **Liste** : ordre conservé, accès par index, doublons autorisés.
* **Set** : pas d’ordre, pas de doublons, utile pour filtrer ou catégoriser.
* **Map** : très puissante pour modéliser des objets structurés ou des relations clé/valeur.