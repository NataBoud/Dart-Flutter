void main() {
  // Exercice 1 - List
  List<String> artistes = [
    'Luna Nova',
    'DJ Solar',
    'Echo Mirage',
    'Neon Pulse',
    'Velvet Sky',
    'Crystal Beats',
    'Midnight Tribe',
    'Electra Ray',
    'Groove Titan',
    'Bass Phantom',
  ];

  artistes.add('Zenith Flow');
  // print(artistes.first);
  // print(artistes.last);
  artistes.remove('Neon Pulse');
  // print("\n Liste d'artistes : ");
  for (var artiste in artistes) {
    // print('- $artiste');
  }

  // Exercice 2 – Set

  Set<String> genres = {'Rock', 'Jazz', 'Électro', 'Classique', 'Hip-Hop'};

  bool newGenre = genres.add('Rock');
  // print(newGenre);
  genres.remove('Électro');

  String genreSearch = 'Jazz';

  if (genres.contains(genreSearch)) {
    // print('"$genreSearch" est présent dans les styles.');
  } else {
    // print('"$genreSearch" n\'est pas présent dans les styles.');
  }

  // print("Tous les styles : ");
  for (var genre in genres) {
    // print('- $genre');
  }

  // Exercice 3 – Map

  List<String> artistesForEvenement = artistes
      .asMap()
      .entries
      .where((entry) => entry.key != 0 && entry.key != 5)
      .map((entry) => entry.value)
      .toList();

  Map<String, dynamic> evenement = {
    'nom': 'Electro Night Fest',
    'lieu': 'Parc des Lumières',
    'date': '2025-08-15',
    'artistes': artistesForEvenement,
  };

  evenement['lieu'] = 'Dôme de la Musique'; // modification
  evenement['genres'] = genres; // ajout
  // print('Evenement : $evenement');

  // print("\nArtistes de l'événement :");

  List<String> eventArtists = List<String>.from(evenement['artistes']);
  for (var artist in eventArtists) {
    // print('- $artist');
  }

  // Exercice 4 – Mini système de recherche
  Map<String, List<String>> scenes = {
    'Grande Scène': [artistes[0], artistes[1], artistes[2]],
    'Scène Indie': [artistes[3], artistes[4]],
    'Scène Electro': [artistes[5], artistes[6]],
  };

  // print("\n Artistes par scène :");

  // Ajout
  scenes['Scène Indie']?.add('Zenith Flow');

  // Suppression
  scenes['Grande Scène']?.remove('DJ Solar');

  // Réaffichage 
  // print("\n Scènes après mise à jour :");
  scenes.forEach((sceneName, artistList) {
    // print('\n$sceneName :');
    for (var artist in artistList) {
      // print('- $artist');
    }
  });

  // Exercice 5 – fonction
  void afficherProgramme(Map<String, List<String>> scenes) {
    scenes.forEach((sceneName, artistList) {
      print('$sceneName :');
      for (var artist in artistList) {
        print('- $artist');
      }
      print(''); 
    });
  };

  // afficherProgramme(scenes);

  Map<String, Map<String, dynamic>> fakeDataEvenements = {
    "evenement1": {
      "nom": "Electro Night Fest",
      "lieu": "Dôme de la Musique",
      "date": "2025-08-15",
      "genres": genres.where((g) => g == 'Électro' || g == 'Hip-Hop').toList(),
      "artistes": [artistes[0], artistes[2], artistes[4]],
      "scenes": {
        "Grande Scène": [artistes[0], artistes[2]],
        "Scène Indie": [artistes[4]],
      },
    },
    "evenement2": {
      "nom": "Jazz & Chill",
      "lieu": "Théâtre Antique",
      "date": "2025-09-10",
      "genres": genres.where((g) => g == 'Jazz' || g == 'Classique').toList(),
      "artistes": [artistes[5], artistes[6]],
      "scenes": {
        "Jazz Lounge": [artistes[5]],
        "Open Stage": [artistes[6]],
      },
    },
    "evenement3": {
      "nom": "Rock Vibes",
      "lieu": "Stade Central",
      "date": "2025-10-01",
      "genres": genres.where((g) => g == 'Rock').toList(),
      "artistes": [artistes[8], artistes[9]],
      "scenes": {
        "Rock Arena": [artistes[8], artistes[9]],
      },
    },
  };


 void afficherTousLesEvenements(Map<String, Map<String, dynamic>> evenements) {
    print("\n PROGRAMME DES ÉVÉNEMENTS\n");

    evenements.forEach((id, evenement) {
      print("ID : $id");
      print("Nom : ${evenement['nom']}");
      print("Lieu : ${evenement['lieu']}");
      print("Date : ${evenement['date']}");

      print("Genres :");
      for (var genre in evenement['genres']) {
        print("- $genre");
      }

      print("Artistes :");
      for (var artiste in evenement['artistes']) {
        print("- $artiste");
      }

      print("Scènes :");
      Map<String, List<String>> scenes = Map<String, List<String>>.from(
        evenement['scenes'],
      );
      scenes.forEach((sceneName, artistList) {
        print("  $sceneName :");
        for (var artist in artistList) {
          print("    - $artist");
        }
      });

      print(""); 
    });
  }

afficherTousLesEvenements(fakeDataEvenements);



}
