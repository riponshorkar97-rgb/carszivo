import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),


      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,

        title: const Text(

          "Favorites",

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

              height: 90,

              width: 90,


              decoration: BoxDecoration(

                color: const Color(0xFF012A50),

                borderRadius: BorderRadius.circular(50),

                border: Border.all(

                  color: const Color(0xFFD4AF37),

                  width: 1.5,

                ),

              ),


              child: const Icon(

                Icons.favorite_border,

                color: Color(0xFFD4AF37),

                size: 45,

              ),

            ),


            const SizedBox(height: 20),


            const Text(

              "No Favorite Cars Yet",

              style: TextStyle(

                color: Colors.white,

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),


            const SizedBox(height: 8),


            const Text(

              "Save your dream luxury cars here",

              style: TextStyle(

                color: Colors.white70,

                fontSize: 15,

              ),

            ),

          ],

        ),

      ),

    );
  }
}
