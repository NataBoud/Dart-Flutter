# TP Dart — Gestion d'une bibliothèque

## Objectif

Créer un mini-programme en Dart pour **gérer une liste de livres**, simuler leur ajout, affichage, recherche, et suppression à partir d’un menu en ligne de commande.

---

## Partie 1 – Définir les types et données

1. Crée une `List<Map<String, dynamic>>` pour stocker les livres.
   Chaque livre aura :

   * un `String` titre
   * un `String` auteur
   * un `int` année
   * un `bool` lu (déjà lu ou non)

2. Crée une fonction `ajouterLivre()` qui :

   * demande les infos à l’utilisateur (via `stdin.readLineSync()`)
   * crée une Map avec ces données
   * l’ajoute à la liste

---

## Partie 2 – Contrôle de flux (menu et actions)

1. Crée une boucle `while` avec un menu :

```
1 - Ajouter un livre
2 - Afficher tous les livres
3 - Rechercher un livre par titre
4 - Supprimer un livre par titre
5 - Quitter
```

2. Utilise un `switch` ou des `if` pour exécuter l’action choisie.

---

## Partie 3 – Fonctions à créer

* `afficherLivres(List<Map<String, dynamic>> livres)` : affiche proprement chaque livre avec ses infos.
* `rechercherLivre(String titre)` : retourne le livre (ou null).
* `supprimerLivre(String titre)` : supprime le livre s’il existe.
* `bool livreExiste(String titre)` : renvoie `true` si un livre existe avec ce titre.

---

## 🔎 Bonus (optionnel)

* Utilise un `for-in` ou `forEach` pour parcourir les livres.
* Affiche les livres lus/non lus différemment.
* Trie les livres par année avec `sort`.

---

## Conseils

* Utilise `final` ou `var` selon les cas.
* Tu peux encapsuler les fonctions dans `main()` ou les déclarer en dehors.
* Soigne l’affichage avec `print`.

---

## Exemple de sortie

```
=== Bibliothèque virtuelle ===

1 - Ajouter un livre
2 - Afficher tous les livres
3 - Rechercher un livre
4 - Supprimer un livre
5 - Quitter
Votre choix : 1

Titre du livre : 1984
Auteur : George Orwell
Année : 1949
Lu (true/false) : true

Livre ajouté avec succès !

Votre choix : 2

📖 Titre : 1984
Auteur : George Orwell
Année : 1949
Lu : ✅

...
```