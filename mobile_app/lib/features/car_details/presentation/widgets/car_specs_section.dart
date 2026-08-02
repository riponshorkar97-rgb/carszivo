import 'package:flutter/material.dart';

class CarSpecsSection extends StatelessWidget {
  const CarSpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "Specifications",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            _specItem(
              "Year",
              "2026",
            ),

            _specItem(
              "Engine",
              "3.5L",
            ),

          ],
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            _specItem(
              "Mileage",
              "10,000 km",
            ),

            _specItem(
              "Gear",
              "Automatic",
            ),

          ],
        ),

      ],
    );
  }


  Widget _specItem(String title, String value) {

    return Container(
      width: 150,

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );

  }
}
