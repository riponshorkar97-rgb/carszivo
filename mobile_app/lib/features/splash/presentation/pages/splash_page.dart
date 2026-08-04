import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/storage/session_manager.dart';


class SplashPage extends StatefulWidget {

  const SplashPage({super.key});


  @override
  State<SplashPage> createState() => _SplashPageState();

}



class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {

    super.initState();

    _checkSession();

  }



  void _checkSession() {


    Timer(

      const Duration(seconds: 3),

      () {


        if (SessionManager.isLoggedIn) {


          Navigator.pushReplacementNamed(

            context,

            AppRoutes.home,

          );


        } 
        
        else {


          Navigator.pushReplacementNamed(

            context,

            AppRoutes.login,

          );


        }


      },

    );


  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),


      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: const [


            Icon(

              Icons.directions_car,

              color: Color(0xFFD4AF37),

              size: 100,

            ),


            SizedBox(height: 20),



            Text(

              "Carszivo",

              style: TextStyle(

                color: Colors.white,

                fontSize: 35,

                fontWeight: FontWeight.bold,

              ),

            ),


            SizedBox(height: 10),



            Text(

              "Luxury Car Marketplace",

              style: TextStyle(

                color: Colors.white70,

                fontSize: 16,

              ),

            ),


          ],

        ),

      ),

    );

  }

}
