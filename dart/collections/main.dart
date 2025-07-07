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

  afficherProgramme(scenes);

}
