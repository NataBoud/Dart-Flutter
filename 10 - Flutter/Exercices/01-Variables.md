# Exercices Dart — Variables, Types et Typage

Exercice 1

**Objectif :** Comprendre comment Dart infère les types, et les effets du typage implicite.

```dart
void main() {
  var a = 5;
  var b = 'hello';
  var c = true;

  a = 10;
  b = b + ' world';
  // b = 42;       // Que se passe-t-il ici ?
}
```

**Questions :**

1. Quels types Dart a-t-il inférés pour `a`, `b` et `c` ?
2. Que se passe-t-il si on affecte `42` à `b` ?
3. Est-ce possible d’écrire `a = 'cinq'` ? Pourquoi ?

---

Exercice 2

**Objectif :** Différencier `final` et `const`.

```dart
void main() {
  final today = DateTime.now();
  const pi = 3.14159;

  // today = DateTime(2020);   // ?
  // pi = 3.14;                // ?

  const list1 = [1, 2, 3];
  final list2 = [1, 2, 3];

  // list1.add(4);  // ?
  list2.add(4);     // ?
}
```

**Questions :**

1. Quelle est la différence entre `final` et `const` ?
2. Pourquoi `list1.add(4)` provoque une erreur mais pas `list2.add(4)` ?
3. Peut-on écrire `const DateTime.now()` ? Pourquoi ?

---
Exercice 3 : `dynamic` vs `var`

**Objectif :** Savoir quand utiliser `dynamic` ou `var`.

```dart
void main() {
  dynamic x = 42;
  x = 'hello';
  x = true;

  var y = 42;
  // y = 'oops';    // ?

  print(x);  // que vaut x ?
  print(y);  // que vaut y ?
}
```

**Questions :**

1. Que se passe-t-il si on écrit `y = 'oops';` ?
2. À quel moment `dynamic` peut-il être utile ? Quels sont les dangers ?
3. Quelle est la différence avec `Object` comme type ?

---

Exercice 4

**Objectif :** Utiliser des `List`, `Map`, `Set` et manipuler leur contenu.

```dart
void main() {
  List<String> fruits = ['apple', 'banana'];
  fruits.add('orange');

  Map<String, int> ages = {'Alice': 30, 'Bob': 25};
  ages['Charlie'] = 20;

  Set<int> ids = {1, 2, 3};
  ids.add(2);    // Que se passe-t-il ici ?

  print(fruits);
  print(ages);
  print(ids);
}
```

**Questions :**

1. Que se passe-t-il lorsqu’on ajoute une valeur déjà existante à un `Set` ?
2. Quelle est la différence entre une `List` et un `Set` ?
3. Peut-on écrire `var ids = {};` ? Quel type Dart attribuera-t-il ?

---
Exercice 5

**Problème :** Corriger le code suivant pour qu’il compile sans erreurs tout en conservant la logique.

```dart
void main() {
  var value = 10;
  value = value + 5;

  final message = 'Hello';
  // message = 'Hi';         // ligne problématique

  dynamic guess;
  guess = 42;
  guess = 'forty-two';

  const pi = 3.14;
  // pi = 3.1415;             // ligne problématique
}
```

**Questions :**

1. Pourquoi les lignes commentées échouent ?
2. Propose une version "plus sûre" de ce code, en utilisant `final`, `var`, `dynamic` correctement.

