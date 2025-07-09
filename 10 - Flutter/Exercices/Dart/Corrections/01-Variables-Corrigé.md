## Corrigé — Exercices Dart : Variables & Types

---
### Exercice 1 : Inférence et typage

```dart
void main() {
  var a = 5;           // int
  var b = 'hello';     // String
  var c = true;        // bool

  a = 10;              // OK
  b = b + ' world';    // OK

  // b = 42;           // ❌ Erreur : on ne peut pas affecter un int à une variable de type String
}
```

Réponses :

1. `a`: `int` — `b`: `String` — `c`: `bool`
2. `b = 42` provoque une erreur car le type de `b` est fixé à `String` après inférence.
3. `a = 'cinq'` est une erreur car `a` est de type `int`.

---

### Exercice 2 : `final` vs `const`

```dart
void main() {
  final today = DateTime.now();   // OK : connue à l'exécution
  const pi = 3.14159;             // OK : connue à la compilation

  // today = DateTime(2020);      // ❌ Erreur : final → réaffectation interdite
  // pi = 3.14;                   // ❌ Erreur : const → valeur figée

  const list1 = [1, 2, 3];        // liste **immuable**
  final list2 = [1, 2, 3];        // liste **mutable**, mais la référence est immuable

  // list1.add(4);               // ❌ Erreur : list1 est const → pas de mutation
  list2.add(4);                   // ✅ OK
}
```

Réponses :

1. `final` : assignable une fois à l'exécution. `const` : doit être déterminée à la compilation.
2. Une `const` collection est immuable → on ne peut pas appeler `add`.
3. `DateTime.now()` est inconnu à la compilation → interdit dans `const`.

---

### Exercice 3 : `dynamic` vs `var`

```dart
void main() {
  dynamic x = 42;      // x peut changer de type
  x = 'hello';         // OK
  x = true;            // OK

  var y = 42;          // y est un int
  // y = 'oops';       // ❌ Erreur : type fixé à int

  print(x);  // true
  print(y);  // 42
}
```

Réponses :

1. `y = 'oops';` provoque une erreur : `y` est un `int` après inférence.
2. `dynamic` permet une grande flexibilité, mais supprime la vérification de type (dangereux !).
3. `Object` accepte tout type aussi, mais ne permet pas d’appeler n’importe quelle méthode sans vérification. C’est plus sûr que `dynamic`.

---

### Exercice 4 : Types complexes

```dart
void main() {
  List<String> fruits = ['apple', 'banana'];
  fruits.add('orange');          // OK

  Map<String, int> ages = {'Alice': 30, 'Bob': 25};
  ages['Charlie'] = 20;          // OK

  Set<int> ids = {1, 2, 3};
  ids.add(2);                    // Ne fait rien (déjà présent)

  print(fruits);   // [apple, banana, orange]
  print(ages);     // {Alice: 30, Bob: 25, Charlie: 20}
  print(ids);      // {1, 2, 3}
}
```

Réponses :

1. Le `Set` ne garde qu’une seule occurrence de chaque valeur → les doublons sont ignorés.
2. `List` accepte les doublons, `Set` ne les accepte pas.
3. `var ids = {};` → Dart l’interprète comme un **Map\<dynamic, dynamic>** vide, pas un `Set`. Pour un set vide, il faut écrire : `var ids = <int>{};`

---

### Exercice 5 : Bonus réflexion

```dart
void main() {
  var value = 10;        // int
  value = value + 5;     // OK

  final message = 'Hello';
  // message = 'Hi';     // ❌ Erreur : final → réaffectation interdite

  dynamic guess;
  guess = 42;
  guess = 'forty-two';   // OK

  const pi = 3.14;
  // pi = 3.1415;         // ❌ Erreur : const → pas de réaffectation
}
```

Réponses :

1. `final` interdit la réaffectation. `const` aussi, mais avec obligation de valeur connue à la compilation.
2. Version corrigée possible :

```dart
void main() {
  var value = 10;
  value += 5;

  final message = 'Hello';     // on ne modifie plus

  dynamic guess = 42;
  guess = 'forty-two';         // acceptable si on veut ce comportement

  const pi = 3.14;             // pas besoin de changer
}
```
