import 'dart:io';
import 'activite_enum.dart';
import 'utils.dart';

List<Activite> mesActivites = [];

void afficherMenu() {
  print('\n=== SPORT-APP ===');
  print('1 - La liste des activité disponible');
  print('2 - Ajouter une activité ');
  print('3 - Afficher mes activités');
  print('5 - Quitter');
}

void main() {
  while (true) {
    afficherMenu();
    stdout.write('Votre choix : ');
    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        listerActivites();
        break;
      case '2':
        ajouterActivite();
        break;
      case '3':
        afficherMesActivites();
        break;

      case '5':
        print('👋 Au revoir !');
        return;
      default:
        print('❌ Choix invalide. Réessayez.');
    }
  }
}

void listerActivites() {
  print('\n=======  📋 Liste des activités disponibles ======= ');
  int index = 1;
  for (var activite in Activite.values) {
    print('$index - ${activite.resume()}');
    index++;
  }
}

void ajouterActivite() {
  print('\n=== Ajouter une activité ===');

  // la liste des activités
  int index = 1;
  for (var activite in Activite.values) {
    print('$index - ${activite.name}');
    index++;
  }

  int choix = lireEntierDansPlage(
    "Choisissez le numéro de l'activité",
    1,
    Activite.values.length,
  );

  if (choix < 1 || choix > Activite.values.length) {
    print('❌ Numéro invalide. Veuillez réessayer.');
    return;
  }

  Activite activiteChoisie = Activite.values[choix - 1];
  mesActivites.add(activiteChoisie);

  print('✅ Activité "${activiteChoisie.name}" ajoutée avec succès !');
}

void afficherMesActivites() {
  if (mesActivites.isEmpty) {
    print('\nAucune activité enregistrée.');
    return;
  } else {
    print('\nVos activités :\n');
  }

  Map<Activite, int> stats = {};
  int totalPoints = 0;

  // Comptage et total des points
  for (var activite in mesActivites) {
    stats[activite] = (stats[activite] ?? 0) + 1;
    totalPoints += activite.pointsEffort;

    // Vos activités :
    // velo (16 points) (2 fois)
    // natation (9 points) (1 fois)
  }

  // Affichage regroupé avec (x fois) systématiquement
  // count est associée à chaque clé activite dans la Map stats.
  stats.forEach((activite, count) {
    int points = activite.pointsEffort * count;
    print(
      '${activite.emojiCouleur} ${activite.name} ($points points) ($count fois)',
    );
  });

  print('\n💪 Points totaux : $totalPoints');
}
