import 'package:flutter/material.dart';

class FeaturedCarCard extends StatelessWidget {
  const FeaturedCarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,

      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),

      child: const Center(
        child: Text(
          "Featured Luxury Car",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
