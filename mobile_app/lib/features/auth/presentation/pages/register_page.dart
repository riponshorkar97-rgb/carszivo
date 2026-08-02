import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          "Create Account",
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
              hintText: "Full Name",
            ),

            const SizedBox(height: 20),

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
              text: "Create Account",
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }
}
