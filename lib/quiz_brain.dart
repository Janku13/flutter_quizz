import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      q: 'You can lead a cow down stairs but not up stairs.',
      a: false,
    ),
    Question(
      q: 'Approximately one quarter of human bones are in the feet.',
      a: true,
    ),
    Question(
      q: 'A slug\'s blodd is green.',
      a: true,
    ),
  ];
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAns() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < getLenthOfQuestion() - 1) {
      print(_questionNumber);
      _questionNumber++;
      print(_questionNumber);
    }
  }

  int getLenthOfQuestion() {
    return _questionBank.length;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print(_questionNumber);
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
