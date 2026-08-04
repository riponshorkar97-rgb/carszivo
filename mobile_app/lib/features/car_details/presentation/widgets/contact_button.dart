import 'package:flutter/material.dart';


class ContactButton extends StatelessWidget {

  const ContactButton({super.key});



  @override
  Widget build(BuildContext context) {


    return SizedBox(


      width: double.infinity,


      height: 60,



      child: ElevatedButton(



        onPressed: () {



        },



        style: ElevatedButton.styleFrom(


          backgroundColor:
              const Color(0xFFD4AF37),



          elevation: 10,



          shadowColor: Colors.black54,



          shape: RoundedRectangleBorder(


            borderRadius:
                BorderRadius.circular(20),


          ),



        ),




        child: const Row(



          mainAxisAlignment:
              MainAxisAlignment.center,



          children: [



            Icon(


              Icons.chat_outlined,


              color: Colors.black,


              size: 26,


            ),




            SizedBox(width: 12),




            Text(


              "Contact Seller",



              style: TextStyle(


                color: Colors.black,


                fontSize: 19,


                fontWeight: FontWeight.bold,


              ),


            ),



          ],



        ),



      ),



    );


  }

}
