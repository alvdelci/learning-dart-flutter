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
              // Text(
              //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              //     style: TextStyle(color: Colors.white)),
              // Chip(
              //   label: Text('Login with Google'),
              //   avatar: CircleAvatar(
              //     backgroundImage: AssetImage('assets/image/wpp_icon.png'),
              //   ),
              // ),
              // Chip(
              //   label: Text('Login with Google'),
              //   avatar: CircleAvatar(
              //     backgroundImage: AssetImage('assets/image/wpp_icon.png'),
              //   ),
              // )
            ],
          )),
        ));
  }
}
