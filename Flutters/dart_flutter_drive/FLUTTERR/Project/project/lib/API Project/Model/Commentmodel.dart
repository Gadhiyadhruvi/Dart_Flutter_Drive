class CommentModel {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  const CommentModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });
  factory CommentModel.fromJson(Map<String, dynamic> myJsonResponse) {
    return CommentModel(
      postId: myJsonResponse['postId'],
      id: myJsonResponse['id'],
      name: myJsonResponse['name'],
      email: myJsonResponse['email'],
      body: myJsonResponse['body'],
    );
  }
}
