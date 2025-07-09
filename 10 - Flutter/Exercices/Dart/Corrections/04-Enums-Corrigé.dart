import 'dart:io';

void main() {
  
  
}

enum Activite {
  course('Course à pied', '🔴', 10, 'Bonne activité cardio'),
  velo('Vélo', '🟡', 8, 'Activité complète et accessible'),
  natation('Natation', '🟢', 15, 'C\'est pas ouf'),
  yoga('Yoga', '🔵', 3, 'Parfait pour la souplesse et la détente'),
  musculation('Musculation', '🟣', 9, 'Idéal pour la force et le renforcement');

  final String nom;
  final String couleur;
  final int points;
  final String description;

  const Activite(this.nom, this.couleur, this.points, this.description);

  String resume() {
    return '$couleur $nom rapporte $points points. $description';
  }
}