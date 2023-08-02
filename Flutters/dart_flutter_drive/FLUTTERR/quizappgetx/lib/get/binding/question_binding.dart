import 'package:get/get.dart';
import 'package:quizappgetx/get/controller/question_controller.dart';

class QuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionController>(() => QuestionController());
  }
}