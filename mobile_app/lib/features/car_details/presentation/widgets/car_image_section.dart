import 'package:flutter/material.dart';


class CarImageSection extends StatelessWidget {

  const CarImageSection({super.key});



  @override
  Widget build(BuildContext context) {


    return Container(


      height: 260,


      width: double.infinity,



      decoration: BoxDecoration(


        color: const Color(0xFF012A50),



        borderRadius:
            BorderRadius.circular(25),



        border: Border.all(

          color: const Color(0xFFD4AF37),

          width: 1.2,

        ),



        boxShadow: const [


          BoxShadow(

            blurRadius: 18,

            spreadRadius: 2,

            offset: Offset(0, 10),

          ),


        ],



      ),



      child: Stack(



        children: [



          Center(



            child: Icon(



              Icons.directions_car,



              color: const Color(0xFFD4AF37),



              size: 110,



            ),



          ),





          Positioned(



            top: 15,



            right: 15,



            child: Container(



              padding:
                  const EdgeInsets.symmetric(

                horizontal: 14,

                vertical: 6,

              ),



              decoration: BoxDecoration(



                color: const Color(0xFFD4AF37),



                borderRadius:
                    BorderRadius.circular(20),



              ),



              child: const Text(



                "PREMIUM",



                style: TextStyle(



                  color: Colors.black,



                  fontSize: 12,



                  fontWeight: FontWeight.bold,



                ),



              ),



            ),



          ),



        ],



      ),



    );


  }

}
