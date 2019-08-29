import 'package:flutter/material.dart';

void main() => runApp(Quizller());

class Quizller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  var scoreTracker = List<Icon>();

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return _renderPage();
  }

  Widget _renderPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _renderText('Question Text here'),
        _renderButton('True', Colors.green, true),
        _renderButton('False', Colors.red, false),
      ],
    );
  }

  Widget _renderText(String text) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderButton(String text, Color color, bool buttonType) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FlatButton(
          onPressed: (){
            if(buttonType)
              print('True Pressed');
            else
              print('False Pressed');
          },
          child: Text(text),
          color: color,
        ),
      ),
    );
  }

//  _buttonPressed() {
////    if(buttonType)
////      print('True Button pressed');
////    else
////      print('False Button Pressed');
////  }
//    print('Button pressed');
//  }
}
