import 'package:flutter/material.dart';

class SellPage extends StatelessWidget {
  const SellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),


      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,

        title: const Text(

          "Sell Your Car",

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

              height: 100,

              width: 100,


              decoration: BoxDecoration(

                color: const Color(0xFF012A50),

                borderRadius: BorderRadius.circular(50),

                border: Border.all(

                  color: const Color(0xFFD4AF37),

                  width: 1.5,

                ),

              ),


              child: const Icon(

                Icons.directions_car,

                color: Color(0xFFD4AF37),

                size: 50,

              ),

            ),


            const SizedBox(height: 25),


            const Text(

              "Sell Your Luxury Car",

              style: TextStyle(

                color: Colors.white,

                fontSize: 24,

                fontWeight: FontWeight.bold,

              ),

            ),


            const SizedBox(height: 10),


            const Text(

              "Create your premium car listing soon",

              textAlign: TextAlign.center,

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
