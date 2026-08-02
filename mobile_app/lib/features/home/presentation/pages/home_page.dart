import 'package:flutter/material.dart';

import '../../../../core/widgets/bottom_nav_bar.dart';
import '../../data/datasources/car_data.dart';
import '../../data/models/car_model.dart';
import '../widgets/car_list_card.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarModel> filteredCars = List.from(CarData.cars);

  int _currentIndex = 0;

  void _searchCars(String query) {
    setState(() {
      if (query.trim().isEmpty) {
        filteredCars = List.from(CarData.cars);
      } else {
        final q = query.toLowerCase();

        filteredCars = CarData.cars.where((car) {
          return car.name.toLowerCase().contains(q) ||
              car.brand.toLowerCase().contains(q);
        }).toList();
      }
    });
  }

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    // পরে এখানে Favorites, Sell, Chat, Profile navigation যোগ করব।
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const HomeHeader(),

              const SizedBox(height: 25),

              SearchBarWidget(
                onChanged: _searchCars,
              ),

              const SizedBox(height: 25),

              Expanded(
                child: ListView.builder(
                  itemCount: filteredCars.length,
                  itemBuilder: (context, index) {
                    return CarListCard(
                      car: filteredCars[index],
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
