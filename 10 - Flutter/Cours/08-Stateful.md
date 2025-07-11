# Stateful / Stateless

### Widgets Stateless

Les widgets Stateless sont des widgets qui ne changent pas au cours du temps. Une fois créés, ils restent immuables. Ils sont utilisés pour représenter des parties de l'interface utilisateur qui ne nécessitent pas de mise à jour dynamique.

### Widgets Stateful

Les widgets Stateful, en revanche, peuvent changer dynamiquement. Ils sont utilisés pour représenter des parties de l'interface utilisateur qui peuvent être mises à jour en réponse à des événements ou à des changements de données.

## Syntaxe

### Widget Stateless

Voici un exemple simple de widget Stateless :

```dart
 Copier
import 'package:flutter/material.dart';

class MonWidgetStateless extends StatelessWidget {
  final String texte = "Yo";

  const MonWidgetStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(texte);
  }
}

```

### Cycle de vie des widgets Stateful

Les widgets Stateful ont un cycle de vie qui comprend plusieurs méthodes :

- `createState()` : Cette méthode est appelée une seule fois, lorsque le widget est inséré dans l'arbre.
- `initState()` : Cette méthode est appelée une seule fois, après que le widget est inséré dans l'arbre.
- `didUpdateWidget()` : Cette méthode est appelée lorsque le widget parent change et que ce widget doit être mis à jour.
- `build()` : Cette méthode est appelée chaque fois que le widget doit être redessiné.
- `dispose()` : Cette méthode est appelée lorsque le widget est supprimé de l'arbre.

### Bonnes pratiques

- Utilisez des widgets Stateless chaque fois que possible pour simplifier votre code et améliorer les performances.
- Utilisez des widgets Stateful uniquement lorsque vous avez besoin de mettre à jour dynamiquement l'interface utilisateur.
- Séparer la logique de l'interface utilisateur en utilisant des widgets plus petits et réutilisables.