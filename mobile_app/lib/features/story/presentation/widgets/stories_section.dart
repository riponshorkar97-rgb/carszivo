import 'package:flutter/material.dart';

import '../../data/story_manager.dart';
import 'story_card.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final stories = StoryManager.instance.stories;

    if (stories.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
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
