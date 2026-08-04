import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      height: 58,

      child: ElevatedButton(

        onPressed: () {},


        style: ElevatedButton.styleFrom(

          backgroundColor: const Color(0xFFD4AF37),

          elevation: 8,

          shadowColor: Colors.black45,


          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(18),

          ),

        ),


        child: const Row(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              Icons.phone,
              color: Colors.black,
            ),


            SizedBox(width: 10),


            Text(
              "Contact Seller",

              style: TextStyle(

                color: Colors.black,

                fontSize: 18,

                fontWeight: FontWeight.bold,

              ),
            ),

          ],
        ),
      ),
    );
  }
}
