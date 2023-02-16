class TodosModel {
  final int userId;
  final int id;
  final String title;
  final String completed;

  const TodosModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory TodosModel.fromJson(Map<String, dynamic> myJsonResponse) {
    return TodosModel(
      userId: myJsonResponse['userId'],
      id: myJsonResponse['id'],
      title: myJsonResponse['title'],
      completed: myJsonResponse['completed'],
    );
  }
}
