import 'package:flutter/material.dart';
import '../../data/models/car_model.dart';

class CarListCard extends StatelessWidget {
  final CarModel car;

  const CarListCard({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF012A50),

        borderRadius: BorderRadius.circular(20),

        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(
            height: 150,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black26,
            ),

            child: const Center(
              child: Icon(
                Icons.directions_car,
                size: 60,
                color: Color(0xFFD4AF37),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Text(
            car.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            car.brand,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
