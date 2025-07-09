import 'dart:async';

// Fonction pour simuler l'arrivée des commandes de café

Stream<String> getCoffeeOrders() {

  // Créer un contrôleur de flux pour émettre des commandes

  final StreamController<String> controller = StreamController<String>();

  // Simuler l'arrivée des commandes après un certain délai

  Timer(Duration(seconds: 1), () => controller.add("Cappuccino"));

  Timer(Duration(seconds: 3), () => controller.add("Latte"));

  Timer(Duration(seconds: 5), () => controller.add("Espresso"));

  Timer(Duration(seconds: 7), () => controller.add("Mocha"));

  Timer(Duration(seconds: 9), () => controller.close());

  return controller.stream;

}

// Fonction pour traiter une commande de café

void processOrder(String coffee) {

  print("Préparation de votre $coffee...");

  // Simuler le temps de préparation du café

  Future.delayed(Duration(seconds: 5), () {

    print("Votre $coffee est prêt !");

  });

}

void main() {

  // Obtenir le flux de commandes de café

  Stream<String> coffeeOrders = getCoffeeOrders();

  // Écouter le flux et traiter chaque commande

  coffeeOrders.listen(

    (String coffee) {

      processOrder(coffee);

    },

    onError: (error) {

      print("Une erreur est survenue : $error");

    },

    onDone: () {

      print("Toutes les commandes ont été traitées.");

    },

  );

}

 