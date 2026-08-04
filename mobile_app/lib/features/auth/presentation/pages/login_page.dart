import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/storage/session_manager.dart';
import '../../../../services/auth_service.dart';

import '../widgets/auth_button.dart';
import '../widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final user = await _authService.login(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    if (user != null) {
      SessionManager.saveSession(user.email);

      debugPrint("Login Success: ${user.name}");
      debugPrint("User Email: ${user.email}");

      if (!mounted) return;

      Navigator.pushReplacementNamed(
        context,
        AppRoutes.home,
      );
    } else {
      debugPrint("Login Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF001F3F),
        elevation: 0,
        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFD4AF37),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Icon(
              Icons.directions_car,
              size: 80,
              color: Color(0xFFD4AF37),
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            CustomTextField(
              hintText: "Email",
              controller: emailController,
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hintText: "Password",
              obscureText: true,
              controller: passwordController,
            ),

            const SizedBox(height: 30),

            AuthButton(
              text: "Login",
              onPressed: _login,
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.register,
                );
              },
              child: const Text(
                "Create Account",
                style: TextStyle(
                  color: Color(0xFFD4AF37),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
