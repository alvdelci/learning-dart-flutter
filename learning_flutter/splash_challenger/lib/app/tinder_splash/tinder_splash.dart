import 'package:flutter/material.dart';

class TinderSplash extends StatefulWidget {
  @override
  _TinderSplashState createState() => _TinderSplashState();
}

class _TinderSplashState extends State<TinderSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light, // status bar brightness
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.8, 0.9),
                  colors: <Color>[Colors.pink, Colors.orange])),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/image/tinder_logo.png'),
              ),
              SizedBox(
                height: 300,
              ),
              InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 40,
                    width: 240,
                    child: Center(
                      child: Text("LOGIN WITH GOOGLE"),
                    ),
                  )),
            ],
          )),
        ));
  }
}
