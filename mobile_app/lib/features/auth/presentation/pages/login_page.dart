import 'package:flutter/material.dart';
import '../../../../core/routes/app_routes.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const CustomTextField(
              hintText: "Email",
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 30),

            AuthButton(
              text: "Login",
              onPressed: () {},
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
                  color: Colors.white,
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
