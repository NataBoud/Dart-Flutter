# Les thèmes

## **Thématiser son application avec `ColorScheme` (Material 3)**

### `ColorScheme` et `ThemeData`

### a. Qu’est-ce que `ColorScheme` ?

`ColorScheme` est un ensemble complet de **couleurs sémantiques** (primary, secondary, background, surface, error, etc.) utilisées par les composants Material 3.

Elle permet de séparer **la logique de couleur** de l’implémentation visuelle.

### b. Qu’est-ce que `ThemeData` ?

`ThemeData` est une classe de Flutter qui **regroupe** toutes les informations sur le thème : `colorScheme`, `typography`, `elevatedButtonTheme`, etc.

> À partir de Flutter 3.0, ThemeData utilise ColorScheme comme base principale de design.

### Syntaxes

### a. Définir un thème clair basé sur `ColorScheme`

```dart
final lightColorScheme = ColorScheme.fromSeed(seedColor: Colors.teal);

```

### b. Définir un thème sombre basé sur `ColorScheme`

```dart
final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.teal,
  brightness: Brightness.dark,
);

```

### c. Utiliser dans `ThemeData`

```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: lightColorScheme,
    useMaterial3: true, // important pour activer Material You
  ),
  darkTheme: ThemeData(
    colorScheme: darkColorScheme,
    useMaterial3: true,
  ),
  themeMode: ThemeMode.system,
)

```

### d. Utiliser les couleurs du thème dans les widgets

```dart
Container(
  color: Theme.of(context).colorScheme.primary,
)

```