import 'package:flutter/material.dart';
import 'package:form_app/views/formulaire_page.dart';

void main() {
final lightColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 240, 105, 109));
final darkColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 240, 105, 125), brightness: Brightness.dark);

  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: lightColorScheme
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme
      ),
      home: FormulaireInteractif(),
      themeMode: ThemeMode.dark,
      ),

  );
}