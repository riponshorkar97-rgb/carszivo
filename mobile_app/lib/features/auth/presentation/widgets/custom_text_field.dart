import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });


  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: obscureText,


      style: const TextStyle(

        color: Colors.white,

        fontSize: 16,

      ),


      decoration: InputDecoration(

        hintText: hintText,


        hintStyle: const TextStyle(

          color: Colors.white60,

        ),


        filled: true,


        fillColor: const Color(0xFF012A50),


        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(18),


          borderSide: const BorderSide(

            color: Color(0xFFD4AF37),

            width: 1,

          ),

        ),


        focusedBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(18),


          borderSide: const BorderSide(

            color: Color(0xFFD4AF37),

            width: 2,

          ),

        ),


        contentPadding: const EdgeInsets.symmetric(

          horizontal: 18,

          vertical: 16,

        ),

      ),

    );
  }
}
