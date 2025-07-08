import 'BoissonType .dart';
import 'utils.dart';

Future<void> main() async {

  print('============== 🍹 Bienvenue dans le BOISSONS-APP ! ==============');

   // 1. Demander le prénom
  final prenom = lireTexteObligatoire('\nEntrez votre prénom');
  final capitalizePrenom = capitaliser(prenom);

  // 2. Afficher le menu des boissons
  print('\nBonjour $capitalizePrenom, voici les boissons disponibles :\n');
  afficherMenu();

  // 3. Lire le choix avec validation dans une plage
  final choix = lireEntierDansPlage('\nEntrez le numéro de votre choix', 1, BoissonType.values.length,);
  final boisson = BoissonType.values[choix - 1];

  // 4. Lancer la préparation
  print(
    '\n👋 $capitalizePrenom, votre commande "${boisson.nom}" est en cours. Elle prendra ${boisson.dureeFormatee}.\n',
  );

  try {
    await for (final etape in preparerBoisson(boisson)) {
      print(etape);
    }

    print('\n🥤 $capitalizePrenom, votre boisson "${boisson.nom}" est prête ! Bonne dégustation !\n');
  } catch (e) {
    print('Une erreur est survenue lors de la préparation : $e');
  }
}

void afficherMenu() {
  int index = 1;
  for (var boisson in BoissonType.values) {
    print('$index - ${boisson.resume()}');
    index++;
  }
}

Stream<String> preparerBoisson(BoissonType boisson) async* {
  yield '🧃 Préparation de ${boisson.nom} en cours... \n';
  await Future.delayed(Duration(seconds: 1));
  yield '🔄 Mélange des ingrédients...\n';
  await Future.delayed(Duration(seconds: 1));
  yield '🔥 Chauffage / infusion...\n';
  await Future.delayed(boisson.tempsPreparation);
  yield '✅ Finalisation de ${boisson.nom}...\n';
}
