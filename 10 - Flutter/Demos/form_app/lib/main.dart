import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {  }, 
              child: const Text('Click here'))
          )
          ),
        ),
      );
  }


}


