  // class Question {
  // final String questiontext;
  // final List<Answer> answerList;
  //
  // Question(this.questiontext, this.answerList);
  // }
  //
  // class Answer {
  // final String answertext;
  // final bool isCorrect;
  //
  // Answer(this.answertext, this.isCorrect);
  // }

  // List<Question> getQuestions() {
  // List<Question> list = [];
  //
  // list.add(
  // Question("1. Grand Central Terminal, Park Avenue, New York is the world's",
  //     [
  //       Answer("A) largest railway station", true),
  //       Answer("B) highest railway station", false),
  //       Answer("c) longest railway station", false),
  //       Answer("D) None of the above", false),
  //     ])
  // );
  // list.add(
  //     Question("2. The headquarter of ESCAP Economic and Social Commission for Asia are situated at",
  //         [
  //           Answer("A) Bangkok", true),
  //           Answer("B) Geneva", false),
  //           Answer("c) Santiago (Chile)", false),
  //           Answer("D) Baghdad", false),
  //         ])
  // );
  // list.add(
  //     Question("3. Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
  //         [
  //           Answer("A) Asia", false),
  //           Answer("B) Africa", true),
  //           Answer("c) Europe", false),
  //           Answer("D) Australia", false),
  //         ])
  // );
  // list.add(
  //     Question("4. Garampani sanctuary is located at",
  //         [
  //           Answer("A) Junagarh, Gujarat", false),
  //           Answer("B) Diphu, Assam", true),
  //           Answer("c) Kohima, Nagaland", false),
  //           Answer("D) Gangtok, Sikkim", false),
  //         ])
  // );
  // list.add(
  //     Question("5. For which of the following disciplines is Nobel Prize awarded ?",
  //         [
  //           Answer("A) Physics and Chemistry", false),
  //           Answer("B) Physiology or Medicine", false),
  //           Answer("c) Literature, Peace", false),
  //           Answer("D) All of the above", true),
  //         ])
  // );
  // return list;
  // }



  import 'package:get/get.dart';

  class Question extends GetxController {
    final RxString questionText = ''.obs;
    final List<Answer> answerList;

    Question(String questionText, this.answerList) {
      this.questionText.value = questionText;
    }
  }

  class Answer extends GetxController {
    final RxString answerText = ''.obs;
    final RxBool isCorrect = false.obs;

    Answer(String answerText, bool isCorrect) {
      this.answerText.value = answerText;
      this.isCorrect.value = isCorrect;
    }
  }

  List<Question> getQuestions() {
    List<Question> list = [];

    list.add(Question(
      "1. Grand Central Terminal, Park Avenue, New York is the world's",
      [
        Answer("A) largest railway station", true),
        Answer("B) highest railway station", false),
        Answer("c) longest railway station", false),
        Answer("D) None of the above", false),
      ],
    ));

    list.add(Question(
      "2. The headquarters of ESCAP Economic and Social Commission for Asia are situated at",
      [
        Answer("A) Bangkok", true),
        Answer("B) Geneva", false),
        Answer("c) Santiago (Chile)", false),
        Answer("D) Baghdad", false),
      ],
    ));

    list.add(Question(
      "3. Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
      [
        Answer("A) Asia", false),
        Answer("B) Africa", true),
        Answer("c) Europe", false),
        Answer("D) Australia", false),
      ],
    ));

    list.add(Question(
      "4. Garampani sanctuary is located at",
      [
        Answer("A) Junagarh, Gujarat", false),
        Answer("B) Diphu, Assam", true),
        Answer("c) Kohima, Nagaland", false),
        Answer("D) Gangtok, Sikkim", false),
      ],
    ));

    list.add(Question(
      "5. For which of the following disciplines is the Nobel Prize awarded?",
      [
        Answer("A) Physics and Chemistry", false),
        Answer("B) Physiology or Medicine", false),
        Answer("c) Literature, Peace", false),
        Answer("D) All of the above", true),
      ],
    ));

    return list;
  }
