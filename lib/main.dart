import 'package:flutter/material.dart';

void main() => runApp(Quizller());

class Quizller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: QuizPage(),
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
  @override
  Widget build(BuildContext context) {
    return _renderPage();
  }

  Widget _renderPage() {
    return Row(
      children: <Widget>[
        _renderText('Question Text here'),
        _renderButton('True'),
        _renderButton('False'),
      ],
    );
  }

  Widget _renderText(String text) {
    return Expanded(
      flex: 5,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _renderButton(String text){
    return Expanded(
      child: FlatButton(onPressed: (){},
          child: Text(text)),
    );
  }

}
