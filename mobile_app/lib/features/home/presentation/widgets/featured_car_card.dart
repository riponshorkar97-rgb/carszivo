import 'package:flutter/material.dart';


class FeaturedCarCard extends StatelessWidget {

  const FeaturedCarCard({super.key});


  @override
  Widget build(BuildContext context) {


    return Container(

      height: 190,


      width: double.infinity,


      padding: const EdgeInsets.all(20),



      decoration: BoxDecoration(

        color: const Color(0xFF012A50),


        borderRadius: BorderRadius.circular(25),


        border: Border.all(

          color: const Color(0xFFD4AF37),

          width: 1,

        ),


        boxShadow: const [

          BoxShadow(

            blurRadius: 15,

            offset: Offset(0, 8),

          ),

        ],

      ),



      child: Row(


        children: [



          Expanded(

            child: Column(


              crossAxisAlignment:
                  CrossAxisAlignment.start,


              mainAxisAlignment:
                  MainAxisAlignment.center,


              children: [



                const Text(

                  "Featured Luxury",

                  style: TextStyle(

                    color: Color(0xFFD4AF37),

                    fontSize: 16,

                    fontWeight: FontWeight.bold,

                  ),

                ),



                const SizedBox(height: 8),



                const Text(

                  "Find Your Dream Car",

                  style: TextStyle(

                    color: Colors.white,

                    fontSize: 24,

                    fontWeight: FontWeight.bold,

                  ),

                ),



                const SizedBox(height: 8),



                const Text(

                  "Premium Carszivo Collection",

                  style: TextStyle(

                    color: Colors.white70,

                    fontSize: 14,

                  ),

                ),


              ],


            ),

          ),




          const Icon(

            Icons.directions_car,

            size: 80,

            color: Color(0xFFD4AF37),

          ),



        ],

      ),

    );


  }

}
