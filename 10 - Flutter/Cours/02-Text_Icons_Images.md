# Text, Icons, Images

## 1. `Text` : afficher du texte

### ▶️ Utilisation de base

```dart
Text('Bonjour Flutter !')

```

### Propriétés importantes

| Propriété | Description |
| --- | --- |
| `style` | Permet de styliser le texte (police, taille, couleur, etc.) |
| `textAlign` | Aligne le texte (`left`, `right`, `center`, `justify`) |
| `maxLines` | Nombre max de lignes à afficher |
| `overflow` | Que faire si le texte dépasse ? (`ellipsis`, `clip`, `fade`) |
| `softWrap` | Permet ou non le retour à la ligne |

## 2. `Icon` : afficher une icône

Flutter utilise les **Material Icons** par défaut.

### Utilisation de base

```dart
Icon(Icons.favorite)
```

### Propriétés importantes

| Propriété | Description |
| --- | --- |
| `icon` | L’icône à afficher (`Icons.*`) |
| `color` | Couleur de l’icône |
| `size` | Taille de l’icône |
| `semanticLabel` | Pour l’accessibilité |

## 3. `Image` : afficher une image

Il existe plusieurs manières d’afficher une image selon la **source** (assets, réseau, mémoire...).

### A. Image depuis un asset local

```dart
Image.asset('assets/images/logo.png')
```

### B. Image depuis Internet

```dart
Image.network('https://picsum.photos/200')
```

### Propriétés importantes

| Propriété | Description |
| --- | --- |
| `width` / `height` | Taille de l’image |
| `fit` | Comment adapter l’image à son conteneur (`BoxFit.cover`, `contain`, etc.) |
| `alignment` | Positionnement dans le cadre |
| `color` | Applique une couleur en overlay |
| `loadingBuilder` | Affiche un widget pendant le chargement (ex. : `CircularProgressIndicator`) |