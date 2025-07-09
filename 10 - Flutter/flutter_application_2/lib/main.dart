import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // APP-BAR
        appBar: AppBar(
          title: const Text(
            'Fiche produit',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFE6ECF0),
          elevation: 2,
          toolbarHeight: 76,
        ),
        // BODY
        body: SizedBox.expand(
          child: Container(
            color: Color.fromARGB(255, 231, 231, 229),

            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),

              // CARTES PRODUIT
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(12, 0, 0, 0),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IMAGE
                  Expanded(
                    flex: 2,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://podoways.fr/cdn/shop/files/Basketdevillefemmeconfortablearrierepodoways.webp?v=1742168311&width=2200',
                        fit: BoxFit.cover,
                        // height: 100,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),

                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chaussures de sport',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '59,99 €',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 12),


                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 59, 129, 250), 
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min, 
                            children: const [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors
                                    .white, 
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Ajouter',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white, // texte blanc
                                ),
                              ),
                            ],
                          ),
                        ),



                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
