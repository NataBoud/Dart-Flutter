import 'package:flutter/material.dart';
import 'package:form_app_2/views/connexion_page.dart';

void main() {
  final lightColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 221, 93, 142),
  );
  final darkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 221, 93, 142),
    brightness: Brightness.dark,
  );

  runApp(
    MaterialApp(
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme: ThemeData(colorScheme: darkColorScheme),
      home: Connexion(),
      themeMode: ThemeMode.light,
    ),
  );
}
