import 'package:flutter/material.dart';

class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center
      (child: 
      Text('Preference page')
      ));
  }
}