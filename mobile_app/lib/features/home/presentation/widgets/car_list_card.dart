import 'package:flutter/material.dart';
import '../../data/models/car_model.dart';
import '../../../car_details/presentation/pages/car_details_page.dart';

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

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const CarDetailsPage(),
          ),
        );

      },

      child: Container(
        height: 220,

        margin: const EdgeInsets.only(bottom: 20),

        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20),
        ),

        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Icon(
              Icons.directions_car,
              color: Colors.white,
              size: 60,
            ),

            const SizedBox(height: 15),

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

            const SizedBox(height: 8),

            Text(
              car.price,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
