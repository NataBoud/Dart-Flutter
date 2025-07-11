# Les listes et les Grids

Les **widgets de liste** et de **grille** permettent d’afficher un grand nombre d’éléments de manière **défilante** et **performante**. Flutter fournit plusieurs widgets adaptés selon le **volume de données** et la **structure visuelle**.

## ListView

### Définition :

`ListView` est un widget de type **scrollable** qui affiche ses enfants en **ligne verticale** (par défaut). Il est capable de **faire défiler** automatiquement le contenu s’il dépasse l’écran.

### Caractéristiques :

- Peut contenir un nombre **fixe** ou **infini** d'éléments.
- Très utilisé pour les listes dynamiques.

---

## ListTile

### 📘 Définition :

`ListTile` est un widget de **ligne pré-formatée** avec :

- `leading`: un icône ou image à gauche
- `title`: texte principal
- `subtitle`: texte secondaire
- `trailing`: action ou icône à droite

```dart
ListTile(
  leading: Icon(Icons.person),
  title: Text('Nom'),
  subtitle: Text('Détail'),
  trailing: Icon(Icons.arrow_forward),
)

```

### Constructeurs principaux :

### `ListView(children: [])`

- Charge tous les widgets **en mémoire** (liste courte recommandée).

```dart
ListView(
  children: [
    Text('Élément 1'),
    Text('Élément 2'),
    ...
  ],
)

// OU PLUS PROPRE

ListView(
  children: const <Widget>[
    ListTile(leading: Icon(Icons.map), title: Text('Map')),
    ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
    ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
  ],
),

```

### `ListView.builder()`

- Génère **à la volée** chaque item.
- Très performant pour des listes longues.

```dart
ListView.builder(
  itemCount: 100,
  itemBuilder: (context, index) {
    return ListTile(title: Text('Item $index'));
  },
)

```

### `ListView.separated()`

- Ajoute un **séparateur** entre les éléments.

```dart
ListView.separated(
  itemCount: 10,
  itemBuilder: (context, index) => Text('Item $index'),
  separatorBuilder: (context, index) => Divider(),
)

```

---
## GridView

### Définition :

`GridView` permet d'afficher les éléments **en grille** (colonnes + lignes).

### Constructeurs principaux :

### `GridView.count()`

- Grille avec **nombre de colonnes fixe**.

```dart
GridView.count(
  crossAxisCount: 3, // 3 colonnes
  children: List.generate(9, (index) {
    return Center(child: Text('Item $index'));
  }),
)

```

### `GridView.builder()`

- Grille **performante** pour grand nombre d’éléments.

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: 20,
  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text('Item $index')),
    );
  },
)

```

### `GridView.extent()`

- Fixe la **largeur maximale** d’un item (et calcule le nombre de colonnes automatiquement).

```dart
GridView.extent(
  maxCrossAxisExtent: 200,
  children: [...],
)

```

# Le widget `Card`

---

## 1. Qu’est-ce que le widget `Card` ?

Le widget `Card` est un **conteneur stylisé** qui permet de présenter une information de manière visuelle, souvent avec une **ombre portée (elevation)**, des **bords arrondis** et un **fond blanc ou coloré**.

Il est très utile pour créer des **éléments visuellement isolés**, comme des fiches de contact, des produits, des articles, etc.

## Syntaxe de base

```dart
Card(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text('Je suis dans une carte'),
  ),
)

```