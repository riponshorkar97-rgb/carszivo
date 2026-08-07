class StoryModel {
  final String id;
  final String userId;
  final String userName;
  final String imageUrl;
  final DateTime createdAt;

  StoryModel({
    required this.id,
    required this.userId,
    required this.userName,
    required this.imageUrl,
    required this.createdAt,
  });
}
