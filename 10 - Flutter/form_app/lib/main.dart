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
        body: Padding(padding: EdgeInsets.all(16), child: InteractifForm()),
      ),
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
  final _passwordController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String? _errorText;

  // Genre sélectionné
  String? genre;

  // Checkbox: Conditons acceptées
  bool accepteConditions = false;
  final _formkey = GlobalKey<FormState>();

  void _validateAge(String value) {
    if (value.isEmpty) {
      setState(() {
        _errorText = 'Veuillez entrer un âge';
      });
    } else if (int.tryParse(value) == null) {
      setState(() {
        _errorText = 'L\'âge doit être un nombre entier';
      });
    } else {
      setState(() {
        _errorText = null;
      });
    }
  }

  // Dropdown: Pays sélectionné
  String? pays;

  void _soumettreFormulaire() {
    print('Nom: ${nomController.text}');
    print('Email: ${emailController.text}');
    print('Genre: $genre');
    print('Conditions: $accepteConditions');
    print('age: $accepteConditions');
    print('Pays: $_ageController');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulaire interactif')),
      body: Form(
        key: _formkey,
        child: ListView(
        
          children: [
            Text("Nom"),
            TextField(controller: nomController),
        
            SizedBox(height: 16),
        
            Text("Email"),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
        
            SizedBox(height: 16),
        
            Text('Genre'),
            DropdownButton<String>(
              value: genre,
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'Homme', child: Text('Homme')),
                DropdownMenuItem(value: 'Femme', child: Text('Femme')),
              ],
              onChanged: (value) {
                setState(() {
                  genre = value;
                });
              },
              hint: Text('Sélectionnez un genre'),
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
                  },
                ),
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
              hint: Text('Sélectionnez un pays'),
            ),
        
            SizedBox(height: 24),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Âge"),
                TextField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Entrez votre âge',
                    errorText: _errorText,
                  ),
                  onChanged: _validateAge,
                ),
              ],
            ),
            SizedBox(height: 24),
            // obscureText true
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mot de passe"),
                TextField(controller: _passwordController, obscureText:  true),
              ],
            ),
            SizedBox(height: 34),
        
            ElevatedButton(
              onPressed: accepteConditions ? _soumettreFormulaire : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: accepteConditions
                    ? Colors.blue
                    : Colors.grey, // bouton grisé si désactivé
              ),
               child: Text('Envoyer'),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
