import 'package:flutter/material.dart';

import '../../../home/data/datasources/car_data.dart';
import '../../../home/data/models/car_model.dart';

import '../../../../core/storage/favorites_manager.dart';



class FavoritesPage extends StatefulWidget {

  const FavoritesPage({super.key});


  @override
  State<FavoritesPage> createState() => _FavoritesPageState();

}



class _FavoritesPageState extends State<FavoritesPage> {


  List<CarModel> favoriteCars = [];



  @override
  void initState() {

    super.initState();

    _loadFavorites();

  }



  void _loadFavorites() {


    favoriteCars = CarData.cars.where((car) {

      return FavoritesManager.isFavorite(
        car.id,
      );

    }).toList();


  }



  void _removeFavorite(String id) {


    setState(() {


      FavoritesManager.removeFavorite(id);


      _loadFavorites();


    });


  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor: const Color(0xFF001F3F),



      appBar: AppBar(


        backgroundColor:
            const Color(0xFF001F3F),



        elevation: 0,



        title: const Text(


          "Favorites",


          style: TextStyle(


            color: Colors.white,


            fontWeight: FontWeight.bold,


          ),


        ),



        iconTheme: const IconThemeData(

          color: Color(0xFFD4AF37),

        ),



      ),




      body: favoriteCars.isEmpty



          ? const Center(



              child: Text(


                "No Favorite Cars Yet",



                style: TextStyle(


                  color: Colors.white,


                  fontSize: 22,


                  fontWeight: FontWeight.bold,


                ),


              ),



            )




          : ListView.builder(



              padding: const EdgeInsets.all(20),



              itemCount: favoriteCars.length,



              itemBuilder: (context, index) {


                final car = favoriteCars[index];



                return Container(


                  margin:
                      const EdgeInsets.only(
                        bottom: 15,
                      ),



                  padding:
                      const EdgeInsets.all(16),



                  decoration: BoxDecoration(


                    color:
                        const Color(0xFF012A50),



                    borderRadius:
                        BorderRadius.circular(20),



                    border: Border.all(


                      color:
                          const Color(0xFFD4AF37),


                    ),


                  ),



                  child: Row(


                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,



                    children: [



                      Column(


                        crossAxisAlignment:
                            CrossAxisAlignment.start,



                        children: [



                          Text(


                            car.name,



                            style:
                                const TextStyle(


                              color:
                                  Colors.white,


                              fontSize: 20,


                              fontWeight:
                                  FontWeight.bold,


                            ),


                          ),



                          Text(


                            car.brand,



                            style:
                                const TextStyle(


                              color:
                                  Colors.white70,


                            ),


                          ),



                        ],



                      ),




                      IconButton(



                        onPressed: () {

                          _removeFavorite(
                            car.id,
                          );

                        },



                        icon: const Icon(



                          Icons.favorite,



                          color:
                              Color(0xFFD4AF37),



                        ),



                      ),



                    ],



                  ),



                );

              },

            ),



    );

  }

}
