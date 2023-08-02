import 'package:get/get.dart';

class ToDo {
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning', isDone: true),
      ToDo(id: '02', todoText: 'Check mails', isDone: true),
      ToDo(id: '03', todoText: 'Team Meating ', ),
      ToDo(id: '04', todoText: 'work on mobile app on 2 hour', ),
      ToDo(id: '05', todoText: 'Dinner', ),
    ].obs;
  }
}