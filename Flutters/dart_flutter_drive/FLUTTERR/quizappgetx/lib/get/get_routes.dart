import 'package:get/get.dart';
import 'package:quizappgetx/get/binding/home_binding.dart';
import 'package:quizappgetx/get/binding/overview_binding.dart';
import 'package:quizappgetx/get/binding/question_binding.dart';
import 'package:quizappgetx/get/binding/splesh_binding.dart';
import 'package:quizappgetx/get/controller/splesh_controller.dart';
import 'package:quizappgetx/screen/home_screen.dart';
import 'package:quizappgetx/screen/overview_screen.dart';
import 'package:quizappgetx/screen/question_screen.dart';
import 'package:quizappgetx/screen/spleshScreen.dart';

class AppPages {

static final List<GetPage> page = [
  GetPage(
      name: SpleshScreen.pageId,
      page: () => SpleshScreen(),
      binding: SpleshBinding(),
  ),
  GetPage(
      name: HomeScreen.pageId,
      page: () => HomeScreen(),
      binding: HomeBinding(),
 ),
  GetPage(
      name: QuestionScreen.pageId,
      page: () => QuestionScreen(),
      binding: QuestionBinding(),
  ),
  GetPage(
      name: OverViewScreen.pageId,
      page: () => OverViewScreen(),
      binding: OverViewBinding(),
  ),
];
}