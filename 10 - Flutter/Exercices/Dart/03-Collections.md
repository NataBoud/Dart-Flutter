# TP Dart – Manipulation des collections (`List`, `Set`, `Map`)


##  Mise en situation

Vous travaillez sur une application mobile de gestion d'événements pour un festival. L’application doit stocker des listes d’artistes, éviter les doublons pour les types de musique, et permettre de gérer des fiches d’événements avec des clés (nom de l’événement) et des valeurs (lieu, date, artistes, etc.).

## EXERCICES


###  Exercice 1 – Liste des artistes

* Crée une `List<String>` contenant au moins 5 artistes différents.
* Ajoute un nouvel artiste à la liste.
* Affiche le premier et le dernier artiste.
* Supprime un artiste de la liste.
* Affiche tous les artistes avec une boucle.

---

###  Exercice 2 – Catégories musicales (Set)

* Crée un `Set<String>` contenant des styles musicaux (rock, jazz, électro...).
* Ajoute un style déjà existant : que se passe-t-il ?
* Supprime un style du set.
* Vérifie si un style spécifique est présent.
* Affiche tous les styles.

---

###  Exercice 3 – Fiche événement (Map)

* Crée une `Map<String, dynamic>` représentant un événement.

  * Clés attendues : `"nom"`, `"lieu"`, `"date"`, `"artistes"` (liste).
* Ajoute ou modifie une entrée dans la map.
* Récupère et affiche la liste des artistes de l’événement.
* Supprime une clé de la fiche.
* Parcours la `Map` et affiche chaque couple clé → valeur.

---

###  Exercice 4 – Mini système de recherche (combinaison Map & List)

* Crée une `Map<String, List<String>>` représentant les scènes du festival :

  * Chaque clé est une scène (`"Grande Scène"`, `"Scène Indie"`…),
  * Chaque valeur est une `List<String>` des artistes qui y jouent.
* Affiche les artistes de chaque scène avec une double boucle.
* Ajoute un artiste à une scène.
* Supprime un artiste d’une scène.

---

###  Exercice 5 – Synthèse (libre)

Crée une fonction `afficherProgramme()` qui prend en paramètre la `Map<String, List<String>>` des scènes et affiche un programme formaté comme suit :

```
Grande Scène :
- Artist A
- Artist B

Scène Electro :
- DJ X
- DJ Y
```

