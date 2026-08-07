import 'models/story_model.dart';
import 'story_manager.dart';


class StoryDummyData {

  static void loadStories() {

    if (StoryManager.instance.count > 0) {
      return;
    }


    StoryManager.instance.addStory(
      const StoryModel(
        id: "1",
        username: "BMW",
        imageUrl:
            "https://images.unsplash.com/photo-1555215695-3004980ad54e",
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "2",
        username: "Mercedes",
        imageUrl:
            "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8",
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "3",
        username: "Luxury",
        imageUrl:
            "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7",
      ),
    );


    StoryManager.instance.addStory(
      const StoryModel(
        id: "4",
        username: "Carszivo",
        imageUrl:
            "https://images.unsplash.com/photo-1503376780353-7e6692767b70",
      ),
    );

  }
}
