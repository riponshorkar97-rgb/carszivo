import 'package:flutter/material.dart';
import 'core/routes/app_routes.dart';

class CarszivoApp extends StatelessWidget {
  const CarszivoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carszivo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37), // Luxury Gold
          brightness: Brightness.dark,
        ),

        scaffoldBackgroundColor: const Color(0xFF001F3F), // Navy Blue

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF001F3F),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        cardTheme: CardThemeData(
          color: Color(0xFF012A50),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

          bodyMedium: TextStyle(
            color: Colors.white70,
          ),
        ),
      ),

      initialRoute: AppRoutes.splash,

      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
