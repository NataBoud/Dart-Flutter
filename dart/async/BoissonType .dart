enum BoissonType {
  cafe('☕', 'café', Duration(seconds: 1)),
  the('🍵', 'thé', Duration(seconds: 2)),
  chocolat('🍫', 'chocolat chaud', Duration(seconds: 3));

  final String emoji;
  final String nom;
  final Duration tempsPreparation;
  // Duration est un type intégré en Dart qui représente une durée de temps (heures, minutes, secondes, millisecondes).

  const BoissonType(this.emoji, this.nom, this.tempsPreparation);

  String resume() =>
      '$emoji $nom prendra ${tempsPreparation.inSeconds} secondes à préparer.';

  String get dureeFormatee {
    final minutes = tempsPreparation.inMinutes;
    final secondes = tempsPreparation.inSeconds % 60;
    return '${minutes} min ${secondes} sec';
  }
}
