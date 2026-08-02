import 'package:flutter/material.dart';

class CarListCard extends StatelessWidget {
  const CarListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,

      margin: const EdgeInsets.only(bottom: 20),

      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: const [

            Icon(
              Icons.directions_car,
              color: Colors.white,
              size: 60,
            ),

            SizedBox(height: 15),

            Text(
              "Mercedes-Benz S-Class",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "\$120,000",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
