class ImageModel {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailurl;

  const ImageModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailurl,
  });
  factory ImageModel.fromJson(Map<String, dynamic> myJsonResponse) {
    return ImageModel(
      albumId: myJsonResponse['albumId'],
      id: myJsonResponse['id'],
      title: myJsonResponse['title'],
      url: myJsonResponse['url'],
      thumbnailurl: myJsonResponse['thumbnailurl'],
    );
  }
}
