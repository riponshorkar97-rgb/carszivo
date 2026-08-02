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
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Find your dream luxury car",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
            ),

          ],
        ),


        IconButton(
          onPressed: () {

            Navigator.pushNamed(
              context,
              AppRoutes.login,
            );

          },

          icon: const Icon(
            Icons.person,
            color: Colors.white,
            size: 32,
          ),
        ),

      ],
    );
  }
}
