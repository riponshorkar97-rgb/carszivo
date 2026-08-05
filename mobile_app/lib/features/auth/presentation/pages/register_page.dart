import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../services/auth_service.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _authService = AuthService();

  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    try {
      debugPrint("Register button pressed");

      final user = await _authService.register(
        nameController.text.trim(),
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      if (user != null) {
        debugPrint("Register Success");

        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Registration Success"),
            backgroundColor: Colors.green,
          ),
        );

        Navigator.pushReplacementNamed(
          context,
          AppRoutes.home,
        );

      } else {
        debugPrint("Register Failed");

        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Registration Failed"),
            backgroundColor: Colors.red,
          ),
        );
      }

    } catch (e) {
      debugPrint(e.toString());

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Colors.red,
        ),
      );
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
