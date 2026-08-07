class StoryModel {
  final String id;
  final String userId;
  final String username;
  final String imageUrl;
  final DateTime createdAt;

  StoryModel({
    required this.id,
    required this.userId,
    required this.username,
    required this.imageUrl,
    required this.createdAt,
  });
}
