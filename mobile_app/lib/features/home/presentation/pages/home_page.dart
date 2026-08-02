import 'package:flutter/material.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/featured_car_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const HomeHeader(),

              const SizedBox(height: 25),

              const SearchBarWidget(),

              const SizedBox(height: 30),

              const FeaturedCarCard(),

            ],
          ),
        ),
      ),
    );
  }
}
