import 'package:flutter/material.dart';
import 'package:carszivo/features/home/data/models/car_model.dart';

class CarInfoSection extends StatelessWidget {
  final CarModel car;

  const CarInfoSection({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          car.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          car.brand,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
          ),
        ),


        const SizedBox(height: 18),


        Text(
          car.price,

          style: const TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),


        const SizedBox(height: 25),


        Container(

          padding: const EdgeInsets.all(16),

          decoration: BoxDecoration(

            color: const Color(0xFF012A50),

            borderRadius: BorderRadius.circular(18),

            border: Border.all(
              color: Color(0xFFD4AF37),
              width: 0.8,
            ),

          ),


          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              _infoRow("Year", car.year.toString()),

              _infoRow("Engine", car.engine),

              _infoRow("Mileage", car.mileage),

              _infoRow("Transmission", car.transmission),

            ],
          ),
        ),


        const SizedBox(height: 20),


        const Text(
          "Description",

          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),


        const SizedBox(height: 8),


        Text(
          car.description,

          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 1.5,
          ),
        ),

      ],
    );
  }


  Widget _infoRow(String title, String value) {

    return Padding(

      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),


          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
