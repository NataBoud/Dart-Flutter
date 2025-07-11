# Les boutons

### ElevatedButton

`ElevatedButton` est un bouton qui se distingue par une élévation, ce qui lui donne une apparence en relief. Il est souvent utilisé pour les actions principales.

### Propriétés principales

- `onPressed` : Fonction appelée lorsque le bouton est pressé.
- `child` : Widget enfant qui représente le contenu du bouton.
- `style` : Style du bouton, incluant la couleur, la forme, l'élévation, etc.

### Exemple

```dart
ElevatedButton(
  onPressed: () {
    // Action à effectuer lorsque le bouton est pressé
    print('Bouton élevé pressé');
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Couleur de fond
    foregroundColor: Colors.white, // Couleur du texte
    elevation: 5, // Élévation
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Bordure arrondie
    ),
  ),
  child: Text('Bouton Élevé')
)
```
---
### TextButton

`TextButton` est un bouton qui se fond dans le contenu et est souvent utilisé pour les actions secondaires.

### Propriétés principales

- `onPressed` : Fonction appelée lorsque le bouton est pressé.
- `child` : Widget enfant qui représente le contenu du bouton.
- `style` : Style du bouton, incluant la couleur, la forme, etc.

---
### OutlinedButton

`OutlinedButton` est un bouton avec une bordure. Il est souvent utilisé pour les actions secondaires qui nécessitent un peu plus d'attention que `TextButton`.

---
### IconButton

`IconButton` est un bouton qui affiche une icône. Il est souvent utilisé pour les actions rapides et discrètes.

### Propriétés principales

- `onPressed` : Fonction appelée lorsque le bouton est pressé.
- `icon` : Widget icône qui représente le contenu du bouton.
- `color` : Couleur de l'icône.
- `tooltip` : Texte d'info-bulle qui s'affiche lorsque l'utilisateur maintient le bouton enfoncé.

### Exemple

```dart
 Copier
IconButton(
  onPressed: () {
    // Action à effectuer lorsque le bouton est pressé
    print('Bouton icône pressé');
  },
  icon: Icon(Icons.favorite),
  color: Colors.red,
  tooltip: 'Ajouter aux favoris',
)

```

---
### FloatingActionButton

`FloatingActionButton` est un bouton circulaire qui flotte au-dessus du contenu. Il est souvent utilisé pour les actions principales et fréquentes.

---
### ButtonBar

`ButtonBar` est un widget qui organise une série de boutons horizontalement. Il est souvent utilisé pour regrouper plusieurs boutons dans une barre.

### Propriétés principales

- `children` : Liste de widgets boutons.
- `alignment` : Alignement des boutons dans la barre.
- `mainAxisSize` : Taille principale de la barre.