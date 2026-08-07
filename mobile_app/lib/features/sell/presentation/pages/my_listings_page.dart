import 'package:flutter/material.dart';

import '../../../sell_car/data/listing_manager.dart';

class MyListingsPage extends StatefulWidget {
  const MyListingsPage({super.key});

  @override
  State<MyListingsPage> createState() => _MyListingsPageState();
}

class _MyListingsPageState extends State<MyListingsPage> {

  @override
  Widget build(BuildContext context) {

    final listings = ListingManager.instance.listings;

    return Scaffold(

      backgroundColor: const Color(0xFF001F3F),

      appBar: AppBar(

        backgroundColor: const Color(0xFF001F3F),

        elevation: 0,

        centerTitle: true,

        title: const Text(
          "My Listings",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),


      body: listings.isEmpty

          ? _emptyState()

          : ListView.builder(

              padding: const EdgeInsets.all(20),

              itemCount: listings.length,

              itemBuilder: (context, index) {

                final car = listings[index];

                return Card(

                  elevation: 0,

                  color: Colors.white,

                  margin: const EdgeInsets.only(bottom: 15),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(16),

                  ),


                  child: ListTile(

                    contentPadding:
                        const EdgeInsets.all(12),


                    leading: const CircleAvatar(

                      radius: 30,

                      backgroundColor:
                          Color(0xFF001F3F),

                      child: Icon(

                        Icons.directions_car,

                        color:
                            Color(0xFFD4AF37),

                      ),

                    ),


                    title: Text(

                      car.name,

                      style: const TextStyle(

                        fontWeight:
                            FontWeight.bold,

                        color:
                            Colors.black,

                      ),

                    ),


                    subtitle: Text(

                      car.brand,

                      style: const TextStyle(

                        color:
                            Colors.black54,

                      ),

                    ),

                    trailing: const Icon(

                      Icons.chevron_right,

                      color:
                          Color(0xFF001F3F),

                    ),

                  ),

                );

              },

            ),

    );

  }



  Widget _emptyState() {

    return Center(

      child: Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          const Icon(

            Icons.directions_car,

            color:
                Color(0xFFD4AF37),

            size:
                70,

          ),


          const SizedBox(height: 20),


          const Text(

            "No Listings Yet",

            style: TextStyle(

              color:
                  Colors.white,

              fontSize:
                  22,

              fontWeight:
                  FontWeight.bold,

            ),

          ),


          const SizedBox(height: 10),


          const Text(

            "Your luxury car listings will appear here",

            style: TextStyle(

              color:
                  Colors.white70,

              fontSize:
                  15,

            ),

          ),

        ],

      ),

    );

  }

}
