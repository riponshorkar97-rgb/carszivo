import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../data/models/car_model.dart';


class CarListCard extends StatelessWidget {

  final CarModel car;


  const CarListCard({

    super.key,

    required this.car,

  });



  @override
  Widget build(BuildContext context) {


    return GestureDetector(


      onTap: () {


        Navigator.pushNamed(

          context,

          AppRoutes.carDetails,

          arguments: car,

        );


      },



      child: Container(


        height: 230,


        margin: const EdgeInsets.only(

          bottom: 20,

        ),



        padding: const EdgeInsets.all(16),



        decoration: BoxDecoration(


          color: const Color(0xFF012A50),


          borderRadius:
              BorderRadius.circular(20),



          border: Border.all(

            color: const Color(0xFFD4AF37),

            width: 0.8,

          ),



        ),



        child: Column(


          crossAxisAlignment:
              CrossAxisAlignment.start,



          children: [



            Container(


              height: 120,


              width: double.infinity,



              decoration: BoxDecoration(


                color: Colors.black26,


                borderRadius:
                    BorderRadius.circular(15),


              ),



              child: const Icon(


                Icons.directions_car,


                color: Color(0xFFD4AF37),


                size: 60,


              ),


            ),




            const SizedBox(height: 12),




            Text(


              car.name,


              style: const TextStyle(


                color: Colors.white,


                fontSize: 22,


                fontWeight: FontWeight.bold,


              ),


            ),




            const SizedBox(height: 5),




            Text(


              car.brand,


              style: const TextStyle(


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
