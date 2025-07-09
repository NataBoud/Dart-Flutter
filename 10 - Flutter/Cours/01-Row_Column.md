# Row/Column

### ➤ Ce sont des **widgets de layout à enfants multiples**.

Ils permettent de **disposer plusieurs widgets enfants** :

- **`Row`** → horizontalement (de gauche à droite),
- **`Column`** → verticalement (de haut en bas).

## 2. Syntaxe de base

### Exemple d’une `Row` :

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Favori'),
  ],
)

```

### Exemple d’une `Column` :

```dart
Column(
  children: [
    Text('Titre'),
    Text('Sous-titre'),
  ],
)

```

## 3. Axes et alignements

### ➤ **Axes de disposition** :

| Widget | Axe principal (`mainAxis`) | Axe secondaire (`crossAxis`) |
| --- | --- | --- |
| Row | Horizontal | Vertical |
| Column | Vertical | Horizontal |

### 3.1 `mainAxisAlignment` – Aligner sur l’axe principal

```dart
mainAxisAlignment: MainAxisAlignment.center

```

🧰 Valeurs possibles :

- `start` (début de l’axe)
- `end` (fin de l’axe)
- `center` (au centre)
- `spaceBetween` (espace uniquement entre les enfants)
- `spaceAround` (espace autour, moitié au bord)
- `spaceEvenly` (même espace partout)

### 3.2 `crossAxisAlignment` – Aligner sur l’axe secondaire

```dart
crossAxisAlignment: CrossAxisAlignment.start

```

Valeurs possibles :

- `start`
- `end`
- `center`
- `stretch` (étire les enfants pour qu’ils occupent toute la largeur/hauteur)
- `baseline` (alignement typographique – avec `Text`)
