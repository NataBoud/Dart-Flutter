enum Activite {
  course('red', 10, 'C’est une excellente activité cardio.'),
  velo('green', 8, 'Une activité complète et accessible.'),
  natation('blue', 9, 'Parfait pour travailler tous les muscles.'),
  yoga('purple', 3, 'Parfait pour la souplesse et la détente.'),
  musculation('black', 7, 'Renforce les muscles efficacement.');

  final String couleur;
  final int pointsEffort;
  final String description;

  const Activite(this.couleur, this.pointsEffort, this.description);

  String get emojiCouleur {
    switch (couleur) {
      case 'red':
        return '🔴';
      case 'blue':
        return '🔵';
      case 'purple':
        return '🟣';
      case 'black':
        return '⚫';
      case 'green':
        return '🟢';
      default:
        return '⚪';
    }
  }

  String resume() {
    return '$emojiCouleur ${name[0].toUpperCase()}${name.substring(1)} (${pointsEffort} points)';
  }
}
