import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Atribui uma palavra aleatória na variavel randomWord
    //criar uym arrays settar e depois exibir com um listview
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Container(
          
        ),
      ),
    );
  }
}
