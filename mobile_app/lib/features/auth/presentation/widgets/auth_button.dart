import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.text,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: double.infinity,

      height: 58,


      child: ElevatedButton(

        onPressed: onPressed,


        style: ElevatedButton.styleFrom(

          backgroundColor: const Color(0xFFD4AF37),

          elevation: 8,

          shadowColor: Colors.black45,


          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(18),

          ),

        ),


        child: Text(

          text,


          style: const TextStyle(

            color: Colors.black,

            fontSize: 18,

            fontWeight: FontWeight.bold,

          ),

        ),

      ),

    );
  }
}
