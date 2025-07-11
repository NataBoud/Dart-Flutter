
import 'package:flutter/material.dart';
import 'package:form_app/models/user.dart';
import 'package:form_app/viewmodels/formulaire_viewmodel.dart';

class FormulaireInteractif extends StatefulWidget {
  @override
  _FormulaireInteractifState createState() => _FormulaireInteractifState();
}

class _FormulaireInteractifState extends State<FormulaireInteractif> {
  // Contrôleurs pour les champs texte
  final nomController = TextEditingController();
  final emailController = TextEditingController();
  final motDePasseController = TextEditingController(); // Exercice 1
  final ageController = TextEditingController(); // Exercice 2

  // Genre sélectionné
  String? genre;

  // Checkbox : conditions acceptées
  bool accepteConditions = false;

  // Dropdown : pays sélectionné
  String? pays;

  // Fonction pour valider si l'âge est un entier
  bool get isAgeValide {
    final text = ageController.text;
    return int.tryParse(text) != null;
  }

  // Désactivation du bouton si les conditions ne sont pas acceptées
  bool get isFormulaireValide => accepteConditions;

  final viewModel = FormulaireViewmodel();

  void _onSubmit() {
    final utilisateur = Utilisateur(
      nom: nomController.text, 
      email: emailController.text, 
      motDePasse: motDePasseController.text, 
      age: int.tryParse(ageController.text) ?? 0, 
      genre: genre ?? '', 
      pays: pays ?? ''
      );

    viewModel.soumettreFormulaire(utilisateur);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulaire interactif")),
      body: Padding(
        padding: EdgeInsets.all(16),
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
            Text("Mot de passe"), // Exercice 1
            TextField(
              controller: motDePasseController,
              obscureText: true, // cache le texte
            ),

            SizedBox(height: 16),
            Text("Âge"), // Exercice 2
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number, // clavier numérique
            ),

            SizedBox(height: 16),
            Text("Genre"), // Exercice 4
            DropdownButton<String>(
              value: genre,
              hint: Text("Sélectionnez un genre"),
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'Homme', child: Text('Homme')),
                DropdownMenuItem(value: 'Femme', child: Text('Femme')),
                DropdownMenuItem(value: 'Autre', child: Text('Autre')),
              ],
              onChanged: (value) {
                setState(() {
                  genre = value;
                });
              },
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
                Expanded(
                    child: Text("J'accepte les conditions d'utilisation")),
              ],
            ),

            SizedBox(height: 16),
            Text("Pays"),
            DropdownButton<String>(
              value: pays,
              hint: Text("Sélectionnez un pays"),
              isExpanded: true,
              items: const [
                DropdownMenuItem(value: 'fr', child: Text('France')),
                DropdownMenuItem(value: 'be', child: Text('Belgique')),
                DropdownMenuItem(value: 'ch', child: Text('Suisse')),
              ],
              onChanged: (value) {
                setState(() {
                  pays = value;
                });
              },
            ),

            SizedBox(height: 24),
            ElevatedButton(
              onPressed: isFormulaireValide
                  ? _onSubmit
                  : null, // ✅ Exercice 3
              child: Text("Envoyer"),
            ),
          ],
        ),
      ),
    );
  }
}