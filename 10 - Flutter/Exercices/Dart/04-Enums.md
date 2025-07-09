# Exercice – Les `enum` en Dart (usage simple & avancé)

* Comprendre le rôle d’une `enum` dans un code métier.
* Utiliser une `enum` avec des propriétés et méthodes.
* Mettre en place une logique conditionnelle à partir de valeurs énumérées.

---

## 🧘 Contexte

Vous développez une application de suivi d’activité physique. L’utilisateur peut enregistrer des séances selon leur type (course, vélo, natation, yoga…). Selon le type d’activité, vous souhaitez calculer des points d’effort, afficher une couleur dans l’interface, et générer une petite description.

---

## Consignes

1. **Définis une énumération `Activite`** avec les valeurs suivantes :
   `course`, `velo`, `natation`, `yoga`, `musculation`

2. Pour chaque activité, associe :

   * une **couleur** (en String ou autre format simple, ex. `'red'`, `'blue'`, etc.)
   * un **nombre de points d’effort** (entier)
   * une **description** personnalisée

   Ces données seront modélisées avec des **propriétés dans l’enum**.

3. Ajoute une **méthode** dans l’enum appelée `resume()` qui retourne une phrase du type :
   *"La course rapporte 10 points. C’est une excellente activité cardio."*

4. Crée une fonction `afficherStats(List<Activite> activites)` qui :

   * affiche les résumés de chaque activité
   * calcule le **total de points d’effort**
   * compte combien de fois chaque activité a été pratiquée

5. Appelle cette fonction avec une liste d’activités aléatoires ou prédéfinies.

---

## Exemple attendu (résultat fictif)

```
La course rapporte 10 points. C’est une excellente activité cardio.
Le yoga rapporte 3 points. C’est parfait pour la souplesse et la détente.
Le vélo rapporte 8 points. Une activité complète et accessible.

Points totaux : 21

Statistiques :
- course : 1 fois
- yoga : 1 fois
- velo : 1 fois
```
