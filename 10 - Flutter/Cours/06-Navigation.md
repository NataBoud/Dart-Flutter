# Navigation avec le Navigator dans Flutter

## Principe fondamental : une pile d’écrans

Flutter utilise une **pile (stack)** pour gérer la navigation :

- Chaque nouvel écran est **empilé** au-dessus du précédent.
- Revenir en arrière signifie **dépiler** l'écran actuel (comme un "pop").

## Le widget `Navigator`

### ➕ Pousser une nouvelle page : `Navigator.push()`

```dart
Navigator.push(context, MaterialPageRoute(builder: (context) => PageB()));

```

- Ajoute une nouvelle page au sommet de la pile.
- L'utilisateur peut revenir à la page précédente avec la flèche "retour" (ou `Navigator.pop()`).

### ➖ Revenir en arrière : `Navigator.pop()`

```dart
Navigator.pop(context);

```

- Retire la page en cours de la pile.
- Peut retourner une valeur à la page précédente (facultatif).

---

## Le `MaterialPageRoute`

- `MaterialPageRoute` est une **implémentation concrète** de route qui utilise une **transition Android-style** (effet glissé).
- Il prend un `builder` qui retourne le widget de la nouvelle page.