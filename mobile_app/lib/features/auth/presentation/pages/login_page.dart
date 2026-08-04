import 'package:flutter/material.dart';
import '../../../../core/routes/app_routes.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
