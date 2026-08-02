import 'package:flutter/material.dart';

class CarImageSection extends StatelessWidget {
  const CarImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,

      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(25),
      ),

      child: const Center(
        child: Icon(
          Icons.directions_car,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
