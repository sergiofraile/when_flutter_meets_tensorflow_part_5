import 'package:flutter/material.dart';
import 'package:handwriten_number_recognizer/recognizer_screen.dart';

void main() => runApp(HandwritenNumberRecognizerApp());

class HandwritenNumberRecognizerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Recognizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecognizerScreen(title: 'Number recognizer',),
    );
  }
}
