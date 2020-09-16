import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizLogic.dart';

void main() => runApp(Quizzz());

class Quizzz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreRecorder = [];
  QuizLogic q = new QuizLogic();
  int finalScore = 0;

  void checkAnswer(String yourAnswer) {
    String correctAnswer = q.getAnswer();

    setState(() {
      // ignore: unrelated_type_equality_checks
      if (!q.isOver()) {
        if (correctAnswer == yourAnswer) {
          finalScore++;
          scoreRecorder.add(
            Icon(Icons.check, color: Colors.green),
          );
        } else {
          scoreRecorder.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        q.nextQuestion();
      } else {
        Alert(
          context: context,
          title: 'Score:' +
              finalScore.toString() +
              ' / ' +
              scoreRecorder.length.toString(),
          desc: 'You\'ve reached end of this quiz.',
        ).show();
        q.reset();
        setState(() {
          finalScore = 0;
        });
        scoreRecorder = [];
      }
    });
  }

  int over = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                q.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lob',
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green[700].withOpacity(0.7),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer('true');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              color: Colors.red[800].withOpacity(0.6),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer('false');
              },
            ),
          ),
        ),
        Row(
          children: scoreRecorder,
        )
      ],
    );
  }
}
