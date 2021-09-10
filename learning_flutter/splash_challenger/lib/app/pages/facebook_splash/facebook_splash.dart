import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FacebookSplash extends StatefulWidget {
  @override
  _FacebookSplashState createState() => _FacebookSplashState();
}

class _FacebookSplashState extends State<FacebookSplash> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light, // status bar brightness
      ),
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/image/fb_icon.png'),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 5,
                  height: 5,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Container(width: 5, height: 5, color: Colors.blue[700]),
                SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  color: Colors.blue[700],
                ),
              ],
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
