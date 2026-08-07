import 'models/story_model.dart';

class StoryManager {
  StoryManager._();

  static final StoryManager instance = StoryManager._();

  final List<StoryModel> stories = [];

  int get count => stories.length;

  void addStory(StoryModel story) {
    stories.add(story);
  }

  void removeStory(String id) {
    stories.removeWhere((story) => story.id == id);
  }

  void clear() {
    stories.clear();
  }
}
