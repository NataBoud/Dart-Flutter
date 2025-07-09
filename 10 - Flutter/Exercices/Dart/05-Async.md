# 🧪 TP Asynchronisme en Dart — Simulateur de Commande de Boisson

## Objectif

Ce TP a pour but de mettre en pratique les notions d’asynchronisme en Dart à travers la création d’une mini-application console interactive.
Vous devrez manipuler les concepts suivants :

* `Future`, `async`, `await`
* `Stream`, `async*`, `yield`
* `await for`
* Gestion des erreurs avec `try/catch`
* Interaction utilisateur via la console

---

## Consigne

Vous devez écrire une application console en Dart qui simule la commande d'une boisson dans un café.

### Fonctionnalités attendues :

1. **Demander le prénom** du client via la console.
2. **Demander la boisson souhaitée** (par exemple : "thé", "café", "chocolat").
3. **Simuler les étapes de la préparation** de la boisson à l’aide d’un `Stream<String>` :

   * Annonce du début de la préparation
   * Mélange des ingrédients
   * Chauffage ou infusion
   * Finalisation
4. Chaque étape doit être affichée avec un **délai** (par exemple 1 seconde) pour simuler un traitement progressif.
5. À la fin, afficher un message de confirmation de livraison de la boisson.

---

## 🧩 Contraintes techniques

* Utilisez `Future.delayed()` pour les pauses entre chaque étape.
* La fonction de préparation doit être définie avec `async*` et `yield`.
* Affichez chaque étape en consommant le `Stream` avec `await for`.
* Gérez les erreurs éventuelles avec un `try/catch`.
* Vérifiez que les entrées utilisateur (prénom et boisson) ne sont ni `null` ni vides.

---

## 💡 Exemple attendu (console)

```bash
Entrez votre prénom : Alice
Entrez votre boisson : chocolat chaud

👋 Bonjour Alice, votre commande "chocolat chaud" est en cours.
🧃 Préparation de chocolat chaud en cours...
🔄 Mélange des ingrédients...
🔥 Chauffage (si nécessaire)...
✅ Finalisation de chocolat chaud
🥤 Alice, votre boisson "chocolat chaud" est prête ! Bonne dégustation !
```

---

## 🏁 Bonus (facultatif)

* Proposez un `enum` pour définir des types de boissons disponibles.
* Associez à chaque boisson un temps de préparation différent.
* Logguez les commandes dans un fichier texte avec `dart:io`.
