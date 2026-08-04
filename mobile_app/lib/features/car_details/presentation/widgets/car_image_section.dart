import 'package:flutter/material.dart';

class CarImageSection extends StatelessWidget {
  const CarImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 240,

      width: double.infinity,


      decoration: BoxDecoration(

        color: const Color(0xFF012A50),

        borderRadius: BorderRadius.circular(25),


        border: Border.all(
          color: const Color(0xFFD4AF37),
          width: 1.5,
        ),


        boxShadow: const [

          BoxShadow(
            blurRadius: 15,
            spreadRadius: 2,
            offset: Offset(0, 8),
          ),

        ],

      ),


      child: const Center(

        child: Icon(

          Icons.directions_car,

          color: Color(0xFFD4AF37),

          size: 100,

        ),

      ),

    );
  }
}
