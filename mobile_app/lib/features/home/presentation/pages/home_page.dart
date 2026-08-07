import 'package:flutter/material.dart';

import '../../data/datasources/car_data.dart';
import '../../data/models/car_model.dart';

import '../widgets/car_list_card.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/featured_car_card.dart';

import '../../../story/data/story_dummy_data.dart';
import '../../../story/presentation/widgets/stories_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  List<CarModel> filteredCars =
      List.from(CarData.cars);



  @override
  void initState() {
    super.initState();

    StoryDummyData.loadStories();
  }



  void _searchCars(String query) {

    setState(() {

      if (query.trim().isEmpty) {

        filteredCars =
            List.from(CarData.cars);

      } else {

        final q = query.toLowerCase();

        filteredCars =
            CarData.cars.where((car) {

          return car.name
                  .toLowerCase()
                  .contains(q) ||
              car.brand
                  .toLowerCase()
                  .contains(q);

        }).toList();

      }

    });

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),


      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),


          child: Column(

            crossAxisAlignment:
                CrossAxisAlignment.start,


            children: [


              const HomeHeader(),


              const SizedBox(height: 20),



              const StoriesSection(),



              const SizedBox(height: 20),



              const FeaturedCarCard(),



              const SizedBox(height: 25),



              SearchBarWidget(
                onChanged: _searchCars,
              ),



              const SizedBox(height: 25),



              const Text(
                "Luxury Cars",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),



              const SizedBox(height: 15),



              Expanded(

                child: filteredCars.isEmpty

                    ? const Center(

                        child: Text(
                          "No cars found",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),

                      )


                    : ListView.builder(

                        physics:
                            const BouncingScrollPhysics(),


                        itemCount:
                            filteredCars.length,


                        itemBuilder:
                            (context, index) {


                          return Padding(

                            padding:
                                const EdgeInsets.only(
                              bottom: 16,
                            ),


                            child: CarListCard(

                              car:
                                  filteredCars[index],

                            ),

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
