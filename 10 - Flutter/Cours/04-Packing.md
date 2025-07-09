# Packing et distribution d'espace

### `MainAxisSize`

Définit si le `Row`/`Column` doit prendre **le minimum** ou **le maximum** d’espace sur son axe principal.

```dart
mainAxisSize: MainAxisSize.min, // juste la taille de ses enfants

```

- `MainAxisSize.max` : prend tout l’espace possible (par défaut).
- `MainAxisSize.min` : se compacte autour de ses enfants.

---

### `Expanded` et `Flexible`

Utilisés pour **répartir l’espace libre** entre les enfants d’un `Row` ou `Column`.

### Exemple avec `Expanded` :

```dart
Row(
  children: [
    Expanded(child: Text('Partie 1')),
    Expanded(child: Text('Partie 2')),
  ],
)
```

### Exemple avec `flex` :

```dart
Expanded(flex: 2, child: Container(color: Colors.red)),
Expanded(flex: 1, child: Container(color: Colors.blue)),

```

### Flexible

- **Comportement** : `Flexible` permet à un enfant de remplir l'espace disponible, mais il n'est pas obligé de le faire. L'enfant peut être plus petit que l'espace disponible.
- **Propriétés** :
    - `fit` : Peut être `FlexFit.loose` (par défaut) ou `FlexFit.tight`. Avec `FlexFit.loose`, l'enfant peut être plus petit que l'espace disponible. Avec `FlexFit.tight`, l'enfant est forcé de remplir l'espace disponible, similaire à `Expanded`.
    - `flex` : Contrôle la proportion de l'espace disponible que l'enfant doit occuper par rapport aux autres enfants `Flexible` ou `Expanded`.

### Expanded

- **Comportement** : `Expanded` force un enfant à remplir l'espace disponible dans la direction principale de la `Row`, `Column` ou `Flex`. L'enfant est étiré pour occuper tout l'espace disponible.
- **Propriétés** :
    - `flex` : Contrôle la proportion de l'espace disponible que l'enfant doit occuper par rapport aux autres enfants `Expanded` ou `Flexible`.
    - `Expanded` est en fait un cas particulier de `Flexible` où `fit` est défini sur `FlexFit.tight`.

### `Spacer` : remplir l’espace vide

Le widget `Spacer` en Flutter est utilisé pour créer un espace flexible entre les widgets dans une `Row`, `Column` ou `Flex`. Il est particulièrement utile pour pousser les widgets les uns loin des autres. `Spacer` est en fait une version simplifiée de `Flexible` ou `Expanded` qui est utilisée uniquement pour créer de l'espace.