import 'package:flutter/material.dart';

void main() {
  runApp(const CarszivoApp());
}

class CarszivoApp extends StatelessWidget {
  const CarszivoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Carszivo',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
