import 'package:flutter/material.dart';

import '../Model/task.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({Key? key, required this.todo, this.onToDoChanged, this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.white,
        leading: Icon(todo.isDone! ? Icons.check_box : Icons.check_box_outline_blank,color: Colors.blue,),
        title: Text(todo.todoText!,style: TextStyle(fontSize: 16,decoration: todo.isDone! ? TextDecoration.lineThrough : null),),
        trailing: Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)),
          child: IconButton(icon: Icon(Icons.delete,color: Colors.white,size: 22,), onPressed: () {
            onDeleteItem(todo.id);
          },),
        ),
      ),
    );
  }
}
