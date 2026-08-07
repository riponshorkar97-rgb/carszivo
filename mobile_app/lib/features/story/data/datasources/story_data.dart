import '../models/story_model.dart';

class StoryData {
  StoryData._();

  static final List<StoryModel> stories = [
    StoryModel(
      id: "1",
      userId: "user1",
      userName: "Carszivo",
      imageUrl:
          "https://images.unsplash.com/photo-1503376780353-7e6692767b70",
      createdAt: DateTime.now(),
    ),
    StoryModel(
      id: "2",
      userId: "user2",
      userName: "BMW",
      imageUrl:
          "https://images.unsplash.com/photo-1555215695-3004980ad54e",
      createdAt: DateTime.now(),
    ),
    StoryModel(
      id: "3",
      userId: "user3",
      userName: "Mercedes",
      imageUrl:
          "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7",
      createdAt: DateTime.now(),
    ),
    StoryModel(
      id: "4",
      userId: "user4",
      userName: "Lexus",
      imageUrl:
          "https://images.unsplash.com/photo-1549399542-7e3f8b79c341",
      createdAt: DateTime.now(),
    ),
  ];
}
