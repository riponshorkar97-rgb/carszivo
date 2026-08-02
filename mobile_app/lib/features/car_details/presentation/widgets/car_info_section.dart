import 'package:flutter/material.dart';
import '../../data/models/car_model.dart';

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
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          car.brand,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 15),

        Text(
          car.price,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

      ],
    );
  }
}
