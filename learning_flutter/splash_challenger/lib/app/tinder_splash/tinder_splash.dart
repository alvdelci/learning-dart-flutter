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
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                        )
                      ),
                        onPressed: () => {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Clicou para fazer login.'),
                              ))
                            },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Image.asset("assets/image/google_icon.png"),
                              )
                            ),
                            SizedBox(
                              child: Text("LOGIN WITH GOOGLE"),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
