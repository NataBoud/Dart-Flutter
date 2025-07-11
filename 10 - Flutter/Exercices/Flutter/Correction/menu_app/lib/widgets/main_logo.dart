import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 1000, // Hauteur totale de la section
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Fond blanc arrondi
          Positioned(

            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(200), // Effet arrondi bas
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/salad_bowl.png',
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}