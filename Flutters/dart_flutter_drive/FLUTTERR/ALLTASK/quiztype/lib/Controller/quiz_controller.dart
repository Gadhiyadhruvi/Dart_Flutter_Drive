  import 'package:get/get.dart';

class QuizController extends GetxController {
  var selectedOption = ''.obs;
  var selectint =0.obs;
  var answerlist = [].obs;
  var scorelist = [].obs;

  void selectOption(String optionIndex) {
    selectedOption.value = optionIndex;
  }
  void selectOptionint(int optionIndex) {
    selectint.value = optionIndex;
  }
}