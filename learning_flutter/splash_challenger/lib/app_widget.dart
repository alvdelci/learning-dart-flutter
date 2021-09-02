import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/pages/facebook_splash/facebook_splash.dart';
import 'app/pages/tinder_splash/tinder_splash.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: "Splash App",
      theme: ThemeData(
      ),
      //home: FacebookSplash(),
      home: TinderSplash(),
    );
  }
}