import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/storage/session_manager.dart';


class ProfilePage extends StatelessWidget {

  const ProfilePage({super.key});



  void _logout(BuildContext context) {


    SessionManager.clearSession();


    Navigator.pushReplacementNamed(

      context,

      AppRoutes.login,

    );


  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),



      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,


        title: const Text(

          "Profile",

          style: TextStyle(

            color: Colors.white,

            fontWeight: FontWeight.bold,

          ),

        ),


        iconTheme: const IconThemeData(

          color: Color(0xFFD4AF37),

        ),

      ),



      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: [



            Container(

              height: 110,

              width: 110,


              decoration: BoxDecoration(

                color: const Color(0xFF012A50),

                borderRadius: BorderRadius.circular(60),


                border: Border.all(

                  color: const Color(0xFFD4AF37),

                  width: 2,

                ),

              ),



              child: const Icon(

                Icons.person,

                color: Color(0xFFD4AF37),

                size: 60,

              ),

            ),



            const SizedBox(height: 25),



            const Text(

              "Carszivo User",

              style: TextStyle(

                color: Colors.white,

                fontSize: 24,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 10),



            const Text(

              "Manage your luxury car account soon",

              textAlign: TextAlign.center,

              style: TextStyle(

                color: Colors.white70,

                fontSize: 16,

              ),

            ),



            const SizedBox(height: 35),



            SizedBox(

              width: 200,

              height: 50,


              child: ElevatedButton(

                onPressed: () {

                  _logout(context);

                },


                style: ElevatedButton.styleFrom(

                  backgroundColor: const Color(0xFFD4AF37),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(15),

                  ),

                ),


                child: const Text(

                  "Logout",

                  style: TextStyle(

                    color: Colors.black,

                    fontSize: 18,

                    fontWeight: FontWeight.bold,

                  ),

                ),

              ),

            ),


          ],

        ),

      ),

    );

  }

}
