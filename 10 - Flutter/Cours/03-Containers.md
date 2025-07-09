# Containers

`Container` est **l’un des widgets les plus polyvalents** de Flutter.

Il permet de :

- **Encadrer** un widget enfant.
- Appliquer des **marges (margin)** ou du **padding**.
- **Fixer la taille** (width, height).
- **Styliser** (couleurs, bordures, coins arrondis).
- **Aligner** un enfant (`alignment`).

> On l’utilise souvent pour structurer visuellement l’interface, créer des zones, ajouter de l’espace ou appliquer un style.

---

## Syntaxe de base

```dart
Container(
  child: Text('Bonjour'),
)

```

Par défaut, le `Container` :

- s’ajuste à la taille de son **enfant**,
- n’a pas de style.

## Propriétés les plus utilisées

| Propriété | Description |
| --- | --- |
| `width` / `height` | Largeur et hauteur fixes |
| `padding` | Espace **interne** entre le bord et l’enfant |
| `margin` | Espace **externe** autour du container |
| `color` | Couleur de fond |
| `alignment` | Positionne l’enfant à l’intérieur du container |
| `decoration` | Style plus avancé : bordures, coins, image de fond, ombre |
| `child` | Widget unique à afficher dans le container |

### `Padding`

- Pour ajouter un espace **interne** autour d’un widget.
- Plus clair et performant que `Container(padding: …)`.

```dart
Padding(
  padding: EdgeInsets.all(8.0),
  child: Text('Avec padding'),
)

```

---

### `SizedBox`

- Pour créer de l’espace vide ou fixer une taille.
- Alternative légère à `Container(width: …, height: …)`.

```dart
SizedBox(height: 20) // Espace vertical
SizedBox(width: 100, height: 50) // Taille fixe

```

---

### `Align`

- Pour positionner un enfant dans un espace donné.
- Alternative à `Container(alignment: …)`.

```dart
Align(
  alignment: Alignment.bottomRight,
  child: Text('En bas à droite'),
)

```

---

### `DecoratedBox`

- Pour styliser (couleur, bordure, ombre, gradient…).
- `Container` utilise en réalité `DecoratedBox` en interne.

```dart
DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Text('Stylisé sans Container'),
  ),
)

```

---

### `Center`

- Pour centrer un widget.
- Remplace `Container(alignment: Alignment.center)`.

```dart
Center(
  child: Text('Centré'),
)
```

### `ConstrainedBox`

- Pour imposer des contraintes de taille (min, max).
- Utile si tu veux une taille minimale sans fixer `width` et `height`.

```dart
ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 100,
    maxWidth: 200,
  ),
  child: Text('Avec contraintes'),
)

```

---