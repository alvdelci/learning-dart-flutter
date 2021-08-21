import 'package:flutter/material.dart';

/**
 * Trabalhando com alinhamentos
 */

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,//Alinha na horizontal
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Alinha na Vertical

        children: [
          FlutterLogo(size: 100.0),
          FlutterLogo(size: 100.0),
          FlutterLogo(size: 100.0),
          FlutterLogo(size: 100.0),
        ],
      ),
    );
  }
}