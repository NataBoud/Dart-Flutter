import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Ce widget est la racine de votre application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Démo Flutter',
      theme: ThemeData(
        // Ceci est le thème de votre application.
        //
        // ESSAYEZ CECI : Essayez d’exécuter votre application avec "flutter run".
        // Vous verrez que l’application a une barre d’outils violette.
        // Ensuite, sans quitter l’application, essayez de changer la seedColor
        // dans le colorScheme ci-dessous en Colors.green, puis lancez un "hot reload"
        // (enregistrez vos modifications ou appuyez sur le bouton "hot reload"
        // dans un IDE compatible Flutter, ou appuyez sur "r" si vous avez
        // lancé l’application via la ligne de commande).
        //
        // Remarquez que le compteur ne revient pas à zéro ; l’état de l’application
        // n’est pas perdu lors du rechargement. Pour réinitialiser l’état,
        // utilisez plutôt un "hot restart".
        //
        // Cela fonctionne également pour le code : la plupart des changements
        // de code peuvent être testés simplement avec un hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 48, 218, 59)),    
      ),
      home: const MyHomePage(title: 'Page d’accueil de la démo Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Ce widget est la page d’accueil de votre application. Elle est *stateful*,
  // ce qui signifie qu’elle possède un objet State (défini ci-dessous) contenant
  // des champs qui affectent son apparence.

  // Cette classe est la configuration de l’état. Elle contient les valeurs
  // (dans ce cas, le titre) fournies par le parent (ici, le widget App),
  // et utilisées par la méthode build de l’état. Les champs d’une sous-classe
  // de Widget sont toujours marqués comme "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Cet appel à setState informe le framework Flutter qu’un changement
      // a eu lieu dans cet objet State, ce qui provoque un nouvel appel
      // de la méthode build ci-dessous pour refléter les valeurs mises à jour.
      // Si nous modifiions _counter sans appeler setState(),
      // alors la méthode build ne serait pas rappelée, et rien ne se passerait
      // visuellement.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Cette méthode est rappelée chaque fois que setState est appelé,
    // comme dans la méthode _incrementCounter ci-dessus.
    //
    // Le framework Flutter est optimisé pour que les appels successifs à build
    // soient rapides, afin que vous puissiez simplement reconstruire tout
    // ce qui a besoin d’être mis à jour plutôt que de modifier individuellement
    // chaque widget.
    return Scaffold(
      appBar: AppBar(
        // ESSAYEZ CECI : Essayez de changer la couleur ici par une couleur spécifique
        // (par exemple Colors.amber) et lancez un hot reload pour voir la
        // couleur de l’AppBar changer, tandis que les autres couleurs restent inchangées.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Ici, nous prenons la valeur de l’objet MyHomePage qui a été créé
        // par la méthode App.build, et l’utilisons pour définir le titre de la barre d’app.
        title: Text(widget.title),
      ),
      body: Center(
        // Center est un widget de mise en page. Il prend un seul enfant
        // et le positionne au centre de son parent.
        child: Column(
          // Column est également un widget de mise en page. Il prend une liste
          // d’enfants et les dispose verticalement. Par défaut, il adapte sa taille
          // pour contenir ses enfants horizontalement, et essaie d’être aussi haut
          // que son parent.
          //
          // Column possède plusieurs propriétés pour contrôler son dimensionnement
          // et le positionnement de ses enfants. Ici, nous utilisons mainAxisAlignment
          // pour centrer les enfants verticalement ; l’axe principal est vertical
          // car Column est vertical (l’axe secondaire serait horizontal).
          //
          // ESSAYEZ CECI : Activez le "debug painting" (choisissez l’action
          // "Toggle Debug Paint" dans l’IDE, ou appuyez sur "p" dans la console),
          // pour voir les contours de chaque widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Vous avez appuyé sur le bouton autant de fois :'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrémenter',
        child: const Icon(Icons.add),
      ), // Cette virgule de fin rend le formatage automatique plus agréable pour les méthodes build.
    );
  }
}
