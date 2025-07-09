import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: EdgeInsets.all(20.0), child: Text('data')),
              SizedBox(width: 100, height: 100,),
              Padding(padding: EdgeInsets.all(20.0), child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
