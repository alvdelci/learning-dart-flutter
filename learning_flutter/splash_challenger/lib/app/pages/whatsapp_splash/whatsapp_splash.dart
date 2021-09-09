import 'package:flutter/material.dart';

class WhatsappSplash extends StatefulWidget {
  @override
  _WhatsappSplashState createState() => _WhatsappSplashState();
}

class _WhatsappSplashState extends State<WhatsappSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                        child: Image.asset(
                      'assets/image/wpp_icon.png',
                      width: 70,
                      height: 70,
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
            ),
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    child: Text('from'),
                  ),
                  SizedBox(
                    child: Text(
                      'FACEBOOK',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
