import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageOne()
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 1")),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.extent(
  maxCrossAxisExtent: 200,
  children: [
    Card(
  elevation: 4, // ombre
  margin: EdgeInsets.all(12),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  color: Colors.white,
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Titre de la carte", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text("Voici un petit contenu dans une carte."),
      ],
    ),
  ),
)

  ],
)
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const PageTwo()));
              }, 
              child: Text("Go to Page 2")),
          ],
        ),
      )
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: Text("Go to Page 1")),
      )
    );
  }
}

