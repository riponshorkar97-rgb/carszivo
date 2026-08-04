import 'package:flutter/material.dart';
import '../../../../core/routes/app_routes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Welcome to Carszivo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Find Your Dream Luxury Car",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Premium Cars • Trusted Marketplace",
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),

          ],
        ),


        InkWell(
          onTap: () {

            Navigator.pushNamed(
              context,
              AppRoutes.login,
            );

          },

          borderRadius: BorderRadius.circular(50),

          child: Container(
            height: 50,
            width: 50,

            decoration: BoxDecoration(
              color: const Color(0xFF012A50),

              borderRadius: BorderRadius.circular(50),

              border: Border.all(
                color: const Color(0xFFD4AF37),
                width: 1.5,
              ),
            ),

            child: const Icon(
              Icons.person,
              color: Color(0xFFD4AF37),
              size: 28,
            ),
          ),
        ),

      ],
    );
  }
}
