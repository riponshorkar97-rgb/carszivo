import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Favorites Page',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
