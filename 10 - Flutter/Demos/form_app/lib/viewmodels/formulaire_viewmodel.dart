import '../models/user.dart';

class FormulaireViewmodel {
    // Simuler une soumission (dans la vraie vie => API)
    void soumettreFormulaire(Utilisateur user) {
    print('Nom : ${user.nom}');
    print('Email : ${user.email}');
    print('Mot de passe : ${user.motDePasse}');
    print('Âge : ${user.age}');
    print('Genre : ${user.genre}');
    print('Pays : ${user.pays}');
  }

}