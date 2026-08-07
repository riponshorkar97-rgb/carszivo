import 'package:flutter/material.dart';

import '../../data/story_manager.dart';
import '../widgets/story_card.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = StoryManager.instance.stories;

    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),

      appBar: AppBar(
        title: const Text(
          "Stories",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF001F3F),
      ),

      body: stories.isEmpty
          ? const Center(
              child: Text(
                "No stories yet",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            )

          : ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(16),

              itemCount: stories.length,

              itemBuilder: (context, index) {
                return StoryCard(
                  story: stories[index],
                );
              },
            ),
    );
  }
}
