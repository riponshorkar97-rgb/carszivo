import 'package:flutter/material.dart';

import '../../../sell_car/data/listing_manager.dart';
import '../../../home/data/models/car_model.dart';

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

                return _listingCard(car);

              },
            ),
    );
  }


  Widget _emptyState() {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF012A50),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFD4AF37),
              ),
            ),
            child: const Icon(
              Icons.directions_car,
              size: 50,
              color: Color(0xFFD4AF37),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "No Listings Yet",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Your luxury car listings will appear here",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

        ],
      ),
    );
  }


  Widget _listingCard(CarModel car) {

    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(

        contentPadding: const EdgeInsets.all(12),

        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            car.image,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),

        title: Text(
          car.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(
          car.price,
        ),

        trailing: const Icon(
          Icons.chevron_right,
          color: Color(0xFF001F3F),
        ),
      ),
    );
  }
}
