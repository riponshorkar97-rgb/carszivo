import 'package:flutter/material.dart';

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
