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
  // b = 42;       // Que se passe-t-il ici ? ==> compileNewDDC main.dart:8:7: Error: A value of type 'int' can't be assigned to a variable of type 'String'. b = 42;       
}
```

**Questions :**

1. Quels types Dart a-t-il inférés pour `a`, `b` et `c` ? 
2. Que se passe-t-il si on affecte `42` à `b` ?
3. Est-ce possible d’écrire `a = 'cinq'` ? Pourquoi ?

```dart
void main() {
  // 1. a -  int, b - Sring, c - bool
}
```

---

Exercice 2

**Objectif :** Différencier `final` et `const`.

```dart
void main() {
  final today = DateTime.now();
  const pi = 3.14159;

  // today = DateTime(2020);   // ? `final` - valeur assignée une seule fois à l’exécution (runtime), et non modifiable par la suite.
  // pi = 3.14;                // ? `const` - valeur connue et fixée à la compilation (compile-time constant). Plus strict que final.

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

```dart
void main() {
  // 1. Const est lus strict que final
  // 2. list1.add(4) -  Unsupported operation: add - car c'est une const et non modifiable et list2 est une référence finale, donc on ne peux pas réassigner une autre liste, mais le contenu de la liste reste modifiable.
  // 3. Non, c’est interdit. DateTime.now() retourne la date actuelle, donc une valeur qui dépend de l’exécution.
}
```

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

1. Que se passe-t-il si on écrit `y = 'oops';` ? Erreur de compilation :  compileNewDDC
main.dart:7:7: Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  y = 'oops';  
      ^
2. À quel moment `dynamic` peut-il être utile ? Quels sont les dangers ? Manipulation des structures très génériques (comme du JSON). Dangers de dynamic : Aucune vérification de type à la compilation
3. Quelle est la différence avec `Object` comme type ? Dynamic : aucune vérification de type 
Object : supertype sûr, mais accès limité sans cast. 



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

1. Que se passe-t-il lorsqu’on ajoute une valeur déjà existante à un `Set` ? Rien ne se passe réellement. Un Set ne contient que des valeurs uniques, donc si on ajoute une valeur déjà présente, elle n’est pas ajoutée une seconde fois.
2. Quelle est la différence entre une `List` et un `Set` ?  Pour la List les doublons sont autorisés, pour le Set non. Dans le Set on ne peut pas accéder  à  un élément par son index alors que dans la List oui.
3. Peut-on écrire `var ids = {};` ? Quel type Dart attribuera-t-il ? Dart considère {} comme une Map vide, pas un Set. => print(ids.runtimeType); // => _LinkedHashMap<dynamic, dynamic>

---
Exercice 5

**Problème :** Corriger le code suivant pour qu’il compile sans erreurs tout en conservant la logique.

```dart
void main() {
  var value = 10;
  value = value + 5;

  final message = 'Hello';
  // message = 'Hi';         // ligne problématique -> final signifie que la variable ne peut être assignée qu'une seule fois. On ne peut pas la modifier ensuite

  dynamic guess;
  guess = 42;
  guess = 'forty-two';

  const pi = 3.14;
  // pi = 3.1415;             // ligne problématique -> On ne paut pas éassigner une variable const
}
```

**Questions :**

1. Pourquoi les lignes commentées échouent ? // message = 'Hi' -> Error: Can't assign to the final variable 'message'.
  message = 'Hi';  // pi = 3.1415 -> Error: Can't assign to the const variable 'pi'.
  pi = 3.1415;
  ^^         
  ^^^^^^^
2. Propose une version "plus sûre" de ce code, en utilisant `final`, `var`, `dynamic` correctement. 

```dart
void main() {
   // Utilisation de `var` pour une variable modifiable
  var value = 10;
  value += 5;

  // Utilisation de `final` pour une valeur fixe
  final message = 'Hello';
 
  dynamic guess = 42;
  guess = 'forty-two'; 
  const pi = 3.1415;
}
```

