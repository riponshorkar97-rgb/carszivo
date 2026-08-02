import 'package:flutter/material.dart';
import '../../../home/data/models/car_model.dart';
import '../widgets/car_image_section.dart';
import '../widgets/car_info_section.dart';
import '../widgets/contact_button.dart';
import '../widgets/car_specs_section.dart';
import '../widgets/favorite_button.dart';

class CarDetailsPage extends StatelessWidget {
  final CarModel car;

  const CarDetailsPage({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          "Car Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        actions: const [

          FavoriteButton(),

        ],
      ),


      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const CarImageSection(),

              const SizedBox(height: 25),


              CarInfoSection(
                car: car,
              ),


              const SizedBox(height: 30),


              const CarSpecsSection(),


              const SizedBox(height: 30),


              const ContactButton(),


            ],
          ),

        ),

      ),
    );
  }
}
