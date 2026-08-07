import 'models/story_model.dart';
import 'story_manager.dart';

class StoryDummyData {
  StoryDummyData._();

  static void loadStories() {

    if (StoryManager.instance.count > 0) {
      return;
    }


    StoryManager.instance.addStory(
      const StoryModel(
        id: "1",
        userId: "bmw",
        username: "BMW",
        imageUrl:
            "https://images.unsplash.com/photo-1555215695-3004980ad54e",
        createdAt: DateTime(2026),
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "2",
        userId: "mercedes",
        username: "Mercedes",
        imageUrl:
            "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8",
        createdAt: DateTime(2026),
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "3",
        userId: "luxury",
        username: "Luxury",
        imageUrl:
            "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7",
        createdAt: DateTime(2026),
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "4",
        userId: "carszivo",
        username: "Carszivo",
        imageUrl:
            "https://images.unsplash.com/photo-1503376780353-7e6692767b70",
        createdAt: DateTime(2026),
      ),
    );

  }
}
