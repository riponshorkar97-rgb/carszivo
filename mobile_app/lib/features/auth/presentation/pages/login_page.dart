import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/storage/session_manager.dart';
import '../../../../core/widgets/global_loading.dart';
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

  bool _isLoading = false;


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  Future<void> _login() async {

    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });


    try {

      final user = await _authService.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );


      if (!mounted) return;


      if (user != null) {

        await SessionManager.saveSession(
          user.email,
        );


        Navigator.pushReplacementNamed(
          context,
          AppRoutes.home,
        );


      } else {

        setState(() {
          _isLoading = false;
        });


        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login Failed"),
            backgroundColor: Colors.red,
          ),
        );

      }


    } catch (e) {

      if (!mounted) return;


      setState(() {
        _isLoading = false;
      });


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

      resizeToAvoidBottomInset: true,

      backgroundColor: const Color(0xFF001F3F),


      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,

        centerTitle: true,

        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),


      body: Stack(

        children: [


          SafeArea(

            child: SingleChildScrollView(

              padding: const EdgeInsets.all(20),


              child: Column(

                children: [


                  const SizedBox(height:40),


                  const Icon(
                    Icons.directions_car,
                    size:80,
                    color: Color(0xFFD4AF37),
                  ),


                  const SizedBox(height:20),


                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                  const SizedBox(height:30),


                  CustomTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),


                  const SizedBox(height:20),


                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    obscureText: true,
                  ),


                  const SizedBox(height:30),


                  AuthButton(
                    text: "Login",
                    onPressed: _isLoading ? null : _login,
                  ),


                  const SizedBox(height:20),


                  TextButton(

                    onPressed: _isLoading
                        ? null
                        : () {

                      Navigator.pushNamed(
                        context,
                        AppRoutes.register,
                      );

                    },


                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize:16,
                      ),
                    ),

                  ),


                ],

              ),

            ),

          ),


          if (_isLoading)

            const GlobalLoading(
              message: "Logging in...",
            ),


        ],

      ),

    );

  }

}
