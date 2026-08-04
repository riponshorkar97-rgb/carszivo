import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/storage/session_manager.dart';
import '../../../../services/auth_service.dart';

import '../widgets/auth_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _authService = AuthService();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    debugPrint("Register button pressed");

    debugPrint("Name: ${nameController.text}");
    debugPrint("Email: ${emailController.text}");

    final user = await _authService.register(
      nameController.text.trim(),
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    if (user != null) {
      SessionManager.saveSession(user.email);

      debugPrint("Register Success: ${user.name}");
      debugPrint("Session Saved: ${SessionManager.userEmail}");

      if (!mounted) return;

      Navigator.pushReplacementNamed(
        context,
        AppRoutes.home,
      );
    } else {
      debugPrint("Register Failed");
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
          "Create Account",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_add_alt_1,
              size: 75,
              color: Color(0xFFD4AF37),
            ),
            const SizedBox(height: 20),
            const Text(
              "Join Carszivo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            CustomTextField(
              hintText: "Full Name",
              controller: nameController,
            ),
            const SizedBox(height: 20),
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
              text: "Create Account",
              onPressed: _register,
            ),
          ],
        ),
      ),
    );
  }
}
