# MVVM (Model View ViewModel)

Arborescence MVVM Flutter
```
lib/
├── main.dart                          # Point d’entrée de l’app
│
├── views/                             # Ecrans (UI uniquement)
│   └── formulaire_page.dart           # Page contenant le formulaire interactif
│
├── viewmodels/                        # Logique de présentation
│   └── formulaire_viewmodel.dart      # ViewModel pour gérer la logique et les données
│
├── models/                            # Données (structure brute)
│   └── utilisateur.dart               # Classe Utilisateur
│
├── widgets/                           # Composants UI réutilisables (optionnel)
│   └── champ_personnalise.dart        # Exemple : widget personnalisé
│
├── constants/                         # Couleurs, textes, styles
│   └── colors.dart
│
└── services/                          # API, gestion de fichiers, etc. (optionnel)
    └── user_service.dart              # Exemple d’appel distant

```

## Exemple de séparation logique

| Dossier | Contenu |
| --- | --- |
| `views/` | Contient l’interface utilisateur uniquement (`StatelessWidget`, layout) |
| `viewmodels/` | Gère les actions, états, interactions utilisateur, validations, appels |
| `models/` | Données brutes : classes, types |
| `services/` | Abstractions API, fichiers, Firebase, etc. |
| `widgets/` | Petits composants réutilisables (champs, boutons, etc.) |

---