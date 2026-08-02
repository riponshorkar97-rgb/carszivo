import 'package:flutter/material.dart';
import '../widgets/splash_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SplashLogo(),
      ),
    );
  }
}
