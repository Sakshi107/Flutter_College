import 'question.dart';

class QuizLogic {
  //we can make anything private by having _ in front of its name
  int _questionNo = 0;
  bool _over = false;
  List<Question> _questions = [
    new Question(
        'TYPEWRITER is the longest word that can be made using the letters only on one row on the keyboard',
        'true'),
    new Question(
        'Approximately one quarter of human bones are in the feet.', 'true'),
    new Question('Earth is the only planet named after a god', 'false'),
    new Question('Like fingerprints, everyone\'s tongue print is not different',
        'false'),
    new Question('The only food that doesn\'t spoil is Honey', 'true')
  ];

  void nextQuestion() {
    if (_questionNo < _questions.length - 1) {
      _questionNo += 1;
      _over = false;
    } else {
      _over = true;
    }
  }

  bool isOver() {
    return _over;
  }

  void reset() {
    _questionNo = 0;
    _over = false;
  }

  String getQuestion() {
    return _questions[_questionNo].question;
  }

  String getAnswer() {
    return _questions[_questionNo].answer;
  }
}
