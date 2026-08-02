import 'package:flutter/material.dart';
import '../../data/dummy_car_data.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/featured_car_card.dart';
import '../widgets/car_list_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: SingleChildScrollView(
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

                const SizedBox(height: 30),

                ...DummyCarData.cars.map(
                  (car) => CarListCard(
                    car: car,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
