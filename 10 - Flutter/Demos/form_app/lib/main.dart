import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
          Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16),
            child: InteractifForm()
          ),
        )
    );
  }


}

class InteractifForm extends StatefulWidget {
  const InteractifForm({super.key});
  @override
  State<InteractifForm> createState() => _InteractifFormState();
}

class _InteractifFormState extends State<InteractifForm> {

  // Contrôleurs pour les champs texte
  final nomController = TextEditingController();
  final emailController = TextEditingController();

  // Genre sélectionné
  String? genre;

  // Checkbox: Conditons acceptées
  bool accepteConditions = false;

  // Dropdown: Pays sélectionné
  String? pays;

  void _soumettreFormulaire() {
    print('Nom: ${nomController.text}');
    print('Email: ${emailController.text}');
    print('Genre: $genre');
    print('Conditions: $accepteConditions');
    print('Pays: $pays');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulaire interactif')),
      body: ListView(
      children: [
        Text("Nom"),
        TextField(controller: nomController),

        SizedBox(height: 16),

        Text("Email"),
        TextField(controller: emailController, keyboardType: TextInputType.emailAddress),

        SizedBox(height: 16),

        Text('Genre'),
        Row(
          children: [
            Radio(value: 'Homme', 
            groupValue: genre, 
            onChanged: (value) {
              setState(() {
                genre = value;
              });
            }),
            Text('Homme'),
            Radio(value: 'Femme',
             groupValue: genre, 
             onChanged: (value) {
              setState(() {
                genre = value;
              });
             }
            ),
            Text('Femme'),
          ],
        ),

        SizedBox(height: 16),

        Row(
          children: [
            Checkbox(
              value: accepteConditions, 
              onChanged: (value) {
                setState(() {
                  accepteConditions = value ?? false;
                });
              }),
            Text("J'accepte les conditions d'utilisation"),
          ],
        ),

        SizedBox(height: 16),

        Text('Pays'),
        DropdownButton<String>(
          value: pays,
          isExpanded: true,
          items: [
            DropdownMenuItem(value: 'fr', child: Text('France')),
            DropdownMenuItem(value: 'be', child: Text('Belgique')),
            DropdownMenuItem(value: 'ch', child: Text('Suisse')),
          ], 
          onChanged: (value) {
            setState(() {
              pays = value;
            });
          },
          hint: Text('Sélectionnez un pays')
          ),

          SizedBox(height: 24),

          ElevatedButton(
            onPressed: _soumettreFormulaire, 
          child: Text('Envoyer')
          )
      ],
    )
  );
  }
}


