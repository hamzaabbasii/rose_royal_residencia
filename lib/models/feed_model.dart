class FeedModel {
  final String id;
  final String title;
  final String description;
  final String videoFile;
  const FeedModel({
    required this.id,
    required this.title,
    required this.description,
    required this.videoFile,
  });

  factory FeedModel.fromJson(Map<String, dynamic> data) {
    return FeedModel(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      videoFile: data['videoFile'],
    );
  }
}
