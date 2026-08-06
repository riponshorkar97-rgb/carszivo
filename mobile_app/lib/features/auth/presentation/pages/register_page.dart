import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/global_loading.dart';
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


  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();


  bool _isLoading = false;



  @override
  void dispose() {

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();

  }




  Future<void> _register() async {


    if (_isLoading) return;



    setState(() {

      _isLoading = true;

    });



    try {


      final user = await _authService.register(

        nameController.text.trim(),

        emailController.text.trim(),

        passwordController.text.trim(),

      );



      if (!mounted) return;



      if (user != null) {


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

            content: Text(
              "Registration Failed",
            ),

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

          content: Text(
            e.toString(),
          ),

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

        centerTitle: true,


        title: const Text(

          "Create Account",

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



                  const SizedBox(height: 40),




                  const Icon(

                    Icons.person_add_alt_1,

                    size: 80,

                    color: Color(0xFFD4AF37),

                  ),




                  const SizedBox(height: 20),




                  const Text(

                    "Join Carszivo",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 30,

                      fontWeight: FontWeight.bold,

                    ),

                  ),




                  const SizedBox(height: 10),




                  const Text(

                    "Create your luxury marketplace account",

                    textAlign: TextAlign.center,

                    style: TextStyle(

                      color: Colors.white70,

                      fontSize: 15,

                    ),

                  ),




                  const SizedBox(height: 40),




                  CustomTextField(

                    hintText: "Full Name",

                    controller: nameController,

                  ),




                  const SizedBox(height: 18),




                  CustomTextField(

                    hintText: "Email Address",

                    controller: emailController,

                  ),




                  const SizedBox(height: 18),




                  CustomTextField(

                    hintText: "Password",

                    controller: passwordController,

                    obscureText: true,

                  ),




                  const SizedBox(height: 35),




                  AuthButton(

                    text: "Create Account",

                    onPressed: _isLoading

                        ? null

                        : _register,

                  ),



                ],

              ),

            ),

          ),




          if (_isLoading)

            const GlobalLoading(

              message: "Creating your account...",

            ),


        ],


      ),


    );


  }

}
