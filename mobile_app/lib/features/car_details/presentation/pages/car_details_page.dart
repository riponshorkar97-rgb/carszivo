import 'package:flutter/material.dart';

import '../../../home/data/models/car_model.dart';

import '../widgets/car_image_section.dart';
import '../widgets/car_info_section.dart';
import '../widgets/contact_button.dart';



class CarDetailsPage extends StatelessWidget {

  final CarModel car;


  const CarDetailsPage({

    super.key,

    required this.car,

  });



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor: const Color(0xFF001F3F),



      appBar: AppBar(


        backgroundColor: const Color(0xFF001F3F),


        elevation: 0,



        title: const Text(


          "Car Details",



          style: TextStyle(


            color: Colors.white,


            fontWeight: FontWeight.bold,


          ),


        ),



        iconTheme: const IconThemeData(


          color: Color(0xFFD4AF37),


        ),



      ),




      body: SingleChildScrollView(



        physics: const BouncingScrollPhysics(),




        child: Padding(



          padding: const EdgeInsets.all(20),




          child: Column(



            crossAxisAlignment:
                CrossAxisAlignment.start,




            children: [




              const CarImageSection(),




              const SizedBox(height: 25),




              Container(


                padding: const EdgeInsets.all(18),



                decoration: BoxDecoration(


                  color: const Color(0xFF012A50),


                  borderRadius:
                      BorderRadius.circular(20),



                  border: Border.all(


                    color: const Color(0xFFD4AF37),


                    width: 0.5,


                  ),



                ),



                child: CarInfoSection(


                  car: car,


                ),



              ),




              const SizedBox(height: 30),




              const ContactButton(),




              const SizedBox(height: 20),



            ],



          ),



        ),



      ),



    );

  }

}
