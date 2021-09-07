import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/pages/home/home_screen.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: "Splash App",
      theme: ThemeData(
      ),
      home: HomeScreen(),
    );
  }
}