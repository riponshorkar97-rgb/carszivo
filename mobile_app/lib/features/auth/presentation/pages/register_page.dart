import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
