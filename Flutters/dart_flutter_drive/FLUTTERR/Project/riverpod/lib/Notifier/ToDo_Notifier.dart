import 'package:riverpod/Model/ToDo.dart';

class TodoList extends StateNotifier<List<Todo>> {
  TodoList([List<Todo> initialTodos]) : super(initialTodos ?? []);

  void addTodo(String description) {
    state = [
      ...state,
      Todo(description: description),
    ];
  }

  void editTodo({String id, String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id) Todo(id: id, description: description) else todo
    ];
  }

  void removeTodo (String id) {
    state 
  }
}
