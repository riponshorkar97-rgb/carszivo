import 'package:flutter/material.dart';

class ProfileStatistics extends StatelessWidget {
  final int listings;
  final int followers;
  final int following;

  const ProfileStatistics({
    super.key,
    required this.listings,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildItem(
              icon: Icons.directions_car,
              title: "Listings",
              value: listings.toString(),
            ),
          ),
          Expanded(
            child: _buildItem(
              icon: Icons.people,
              title: "Followers",
              value: followers.toString(),
            ),
          ),
          Expanded(
            child: _buildItem(
              icon: Icons.person_add,
              title: "Following",
              value: following.toString(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xFF001F3F),
          size: 30,
        ),
        const SizedBox(height: 10),
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
