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
        body: Center(

          child: Container(

            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8,offset: Offset(0, 4),),],
            ),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // Image produit
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://medias.lequipe.fr/img-photo-jpg/nike-top-3-des-dernieres-sorties-sneakers/1500000002229142/30:0,1170:760-1200-800-75/7f63f.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                
                // INFO PRODUIT
                Expanded(
               
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
                      const SizedBox(height: 6
                      ),
                      const Text(
                        '59,99 €',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 59, 129, 250),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.shopping_cart, color: Colors.white),
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

        backgroundColor: const Color(0xFFF2F2F2),
      ),
    );
  }
}
