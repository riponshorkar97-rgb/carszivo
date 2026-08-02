import 'package:flutter/material.dart';

import '../../data/datasources/car_data.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/car_list_card.dart';

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
            children: [
              const HomeHeader(),

              const SizedBox(height: 25),

              const SearchBarWidget(),

              const SizedBox(height: 25),

              Expanded(
                child: ListView.builder(
                  itemCount: CarData.cars.length,
                  itemBuilder: (context, index) {
                    return CarListCard(
                      car: CarData.cars[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
