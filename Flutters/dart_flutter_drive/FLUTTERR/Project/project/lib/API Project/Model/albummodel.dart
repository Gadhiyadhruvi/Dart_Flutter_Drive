class AlbumModel {
  final int userId;
  final int id;
  final String title;

  const AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });
  factory AlbumModel.fromJson(Map<String, dynamic> myJsonResponse) {
    return AlbumModel(
      userId: myJsonResponse['userId'],
      id: myJsonResponse['id'],
      title: myJsonResponse['title'],
    );
  }
}
