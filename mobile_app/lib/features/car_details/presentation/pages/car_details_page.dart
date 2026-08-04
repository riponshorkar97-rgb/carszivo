import 'package:flutter/material.dart';

import '../../../home/data/models/car_model.dart';

import '../../../../core/storage/favorites_manager.dart';

import '../widgets/car_image_section.dart';
import '../widgets/car_info_section.dart';
import '../widgets/contact_button.dart';



class CarDetailsPage extends StatefulWidget {

  final CarModel car;


  const CarDetailsPage({

    super.key,

    required this.car,

  });



  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();

}



class _CarDetailsPageState extends State<CarDetailsPage> {


  late bool isFavorite;



  @override
  void initState() {

    super.initState();

    isFavorite = FavoritesManager.isFavorite(
      widget.car.id,
    );

  }



  void _toggleFavorite() {


    setState(() {


      FavoritesManager.toggleFavorite(
        widget.car.id,
      );


      isFavorite = !isFavorite;


    });


  }



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



        actions: [


          IconButton(


            onPressed: _toggleFavorite,



            icon: Icon(


              isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,



              color: const Color(0xFFD4AF37),



              size: 30,

            ),



          ),


        ],



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

                  car: widget.car,

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
