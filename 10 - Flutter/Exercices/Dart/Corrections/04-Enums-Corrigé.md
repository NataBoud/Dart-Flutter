# Correction - Exercice Enum en Dart

## Étape 1 – Définition de l’enum enrichie

```dart
enum Activite {
  course('Course à pied', '🔴', 10, 'Excellente activité cardio.'),
  velo('Vélo', '🟢', 8, 'Activité complète et accessible.'),
  natation('Natation', '🔵', 12, 'Très bon entraînement musculaire.'),
  yoga('Yoga', '🟣', 3, 'Parfait pour la souplesse et la détente.'),
  musculation('Musculation', '⚫️', 9, 'Idéal pour la force et le renforcement.');

  final String nom;
  final String couleur;
  final int points;
  final String description;

  const Activite(this.nom, this.couleur, this.points, this.description);

  String resume() {
    return '$couleur $nom rapporte $points points. $description';
  }

  @override
  String toString() => nom;
}
```

* `const Activite(...)` : constructeur constant obligatoire dans une `enum`.
* Chaque constante de l’enum (`course`, `velo`, etc.) reçoit des **valeurs associées**.
* `resume()` est une **méthode métier** directement liée à l’enum.
* `toString()` est redéfini pour un affichage plus clair (`Activite.course` → `Course à pied`).


##  Étape 2 – Fonction d’analyse

```dart
void afficherStats(List<Activite> activites) {
  int totalPoints = 0;
  Map<Activite, int> statistiques = {};

  for (var activite in activites) {
    print(activite.resume());
    totalPoints += activite.points;

    // Incrément du compteur
    statistiques[activite] = (statistiques[activite] ?? 0) + 1;
  }

  print('Points totaux : $totalPoints\n');

  print('Statistiques :');
  for (var entry in statistiques.entries) {
    print('- ${entry.key} : ${entry.value} fois');
  }
}
```

* On accumule les points et on compte les occurrences avec une `Map<Activite, int>`.
* `(statistiques[activite] ?? 0) + 1` est une technique courante pour éviter un `null`.
* Affichage séparé en deux parties : résumés, puis statistiques.

## Étape 3 – Simulation dans `main`

```dart
void main() {
  List<Activite> mesActivites = [
    Activite.course,
    Activite.yoga,
    Activite.velo,
    Activite.natation,
    Activite.yoga,
    Activite.course,
    Activite.musculation,
  ];

  afficherStats(mesActivites);
}
```

---

## 🧪 Exemple de sortie

```
🔴 Course à pied rapporte 10 points. Excellente activité cardio.
🟣 Yoga rapporte 3 points. Parfait pour la souplesse et la détente.
🟢 Vélo rapporte 8 points. Activité complète et accessible.
🔵 Natation rapporte 12 points. Très bon entraînement musculaire.
🟣 Yoga rapporte 3 points. Parfait pour la souplesse et la détente.
🔴 Course à pied rapporte 10 points. Excellente activité cardio.
⚫️ Musculation rapporte 9 points. Idéal pour la force et le renforcement.

Points totaux : 55

Statistiques :
- Course à pied : 2 fois  
- Yoga : 2 fois  
- Vélo : 1 fois  
- Natation : 1 fois  
- Musculation : 1 fois
```


## Points pédagogiques à retenir

| Élément               | Concept                              |
| --------------------- | ------------------------------------ |
| `enum Activite(...)`  | Enum enrichie avec constructeur      |
| `final` dans une enum | Propriétés associées à chaque valeur |
| `resume()`            | Méthode utile pour la lisibilité     |
| `Map<Enum, int>`      | Comptage des occurrences             |
| `toString()` redéfini | Meilleur affichage dans les logs     |

