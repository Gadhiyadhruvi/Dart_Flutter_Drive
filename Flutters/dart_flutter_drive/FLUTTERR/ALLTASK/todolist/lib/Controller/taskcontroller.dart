import 'package:get/get.dart';

import '../Model/task.dart';

class TaskController extends GetxController {
final _tasklist = <ToDo>[].obs;

List<ToDo> get tasklist =>_tasklist.value;
}