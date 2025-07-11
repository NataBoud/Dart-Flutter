import 'package:flutter/material.dart';
import 'package:navigation_buttons/screens/menu_screen.dart';

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
                  const SizedBox(height: 50),
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
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
