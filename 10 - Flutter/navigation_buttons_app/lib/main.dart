import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // --- BACKGROUND ---
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 7, child: Container()),
            ],
          ),

          // --- CONTENU PAR-DESSUS ---
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Image.asset('assets/fish.png', fit: BoxFit.contain),
                  const SizedBox(height: 50), // espace entre image et titre
                  const Text(
                    'LA SIESTA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 0, 153, 248),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Le meilleur restaurant en bord de mer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Découvrez notre carte méditerranéenne avec des produits frais, dans un cadre idyllique au bord de l’eau.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(232, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 153, 248),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: const Text(
                        'VOIR LE MENU',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),

      backgroundColor: Color.fromARGB(255, 135, 235, 255),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          
            children: const [
              Text(
                "Hi, Jhon",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Savourez un délicieux repas !",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 153, 248),
      ),

      body: Column(
        children: [
          // Barre de recherche
          Container(
            color: const Color.fromARGB(255, 0, 153, 248),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 48,
              child: Row(
                children: const [
                  Icon(Icons.search, color: Color.fromARGB(255, 40, 40, 40)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Rechercher...",
                      style: TextStyle(
                        color: Color.fromARGB(255, 40, 40, 40),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Grille d'éléments
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 18, left: 12, right: 12),
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        // Image avec fond
                        Expanded(
                          flex: 8,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(57, 109, 199, 255),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                            ),
                            child: Image.asset(
                              'assets/fish.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        // Texte Commander
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 135, 235, 255),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "Commander",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      // Menu du bas
      bottomNavigationBar: BottomAppBar(
        height: 58,
        color: Colors.white,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // TODO: Action Home
                },
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // TODO: Action Ajouter
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // TODO: Action Panier
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
