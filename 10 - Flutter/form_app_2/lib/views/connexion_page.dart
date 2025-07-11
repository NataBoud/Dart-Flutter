import 'package:flutter/material.dart';
import 'package:form_app_2/constants/style.dart';
import 'package:form_app_2/viewmodels/connexion_viewmodel.dart';
import 'package:form_app_2/views/preference_page.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final ConnexionViewmodel viewModel = ConnexionViewmodel();

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  //Avec List.generate(4, (_) => ...), on crée automatiquement une liste de 4 objets :
  // _focusNodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];
  // _controllers = [TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController()];
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  bool get isCodeValid => _controllers.every(
    (controller) =>
        controller.text.length == 1 && int.tryParse(controller.text) != null,
  );

  void _onCodeChanged(int index, String value) {
    if (value.length == 1 && index < 3) {
      _focusNodes[index + 1].requestFocus(); // Passer au champ suivant
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus(); // Retour au champ précédent
    }
    setState(() {}); // Rafraîchir l’état du bouton
  }

  void _submitCode() {
    final code = _controllers.map((c) => c.text).join();
    final isCodeValid = viewModel.verifierCode(code);

    if (!isCodeValid) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Code incorrect')));
      return;
    }

    // Code valide → naviguer vers Preference
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Preference()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 224, 66, 127),
              Color.fromARGB(255, 235, 124, 174),
              Color.fromARGB(255, 235, 154, 162),
              Color.fromARGB(255, 240, 156, 165),
              Color.fromARGB(255, 240, 80, 117),
              Color.fromARGB(255, 240, 80, 117),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 68.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                  ), 
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Verify your account',
                        style: AppTextStyles.heading.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Enter the 4-digit code we have sent you',
                        style: AppTextStyles.subtitle.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 102),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(4, (index) {
                            return SizedBox(
                              width: 50,
                              child: TextField(
                                controller: _controllers[index],
                                focusNode: _focusNodes[index],
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24,  fontWeight: FontWeight.w600,
                                ),
                                onChanged: (value) =>
                                    _onCodeChanged(index, value),
                                decoration: const InputDecoration(
                                  counterText: '',
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 122),

                SizedBox(
                  width: double.infinity, // prend toute la largeur dispo
                  child: ElevatedButton(
                    onPressed: _submitCode,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white, 
                      foregroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: Text("Continue", style: AppTextStyles.button),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
