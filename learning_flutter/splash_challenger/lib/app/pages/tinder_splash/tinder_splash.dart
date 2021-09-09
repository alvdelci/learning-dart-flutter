import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TinderSplash extends StatefulWidget {
  @override
  _TinderSplashState createState() => _TinderSplashState();
}

class _TinderSplashState extends State<TinderSplash> {
  static const _termsUrl = 'https://recodejr.com';

  void _launchUrl() async => {
        await canLaunch(_termsUrl)
            ? launch(_termsUrl)
            : throw 'Não consegui ir no link $_termsUrl'
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Colors.orange, Colors.pink])),
      child: Center(
          child: Column(
        children: [
          SizedBox(height: 80,),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset('assets/image/tinder_logo.png'),
          ),
          SizedBox(
            height: 190,
          ),
          Container(
            child: Column(
              children: [
                Container(
                    //"Terms, Privacy Policy e Coockies Policy é link suclinhado"
                    child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: RichText(
                      textAlign: TextAlign.center,

                      text: TextSpan(
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          text: "By clicking Log In, you agree with our ",
                          children: [
                            TextSpan(
                                text: "Terms.",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl();
                                  }),
                            TextSpan(
                                text: " Learn how we process your data in our "),
                            TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl();
                                  }),
                            TextSpan(text: " and "),
                            TextSpan(
                                text: "Cookies Policy",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl();
                                  })
                          ]),
                    ),
                  ),
                )),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0.0, 35, 0.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.grey[700],
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        shadowColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 38,
                              width: 38,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child:
                                    Image.asset("assets/image/google_icon.png"),
                              )),
                          SizedBox(
                            child: Text("LOG IN WITH GOOGLE"),
                          ),
                          SizedBox(
                            width: 35,
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0.0, 35, 0.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.grey[700],
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        shadowColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 40,
                              width: 40,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Image.asset("assets/image/message_icon.png"),
                              )),
                          SizedBox(
                            child: Text("LOG IN WITH PHONE NUMBER"),
                          ),
                          SizedBox(
                            width: 35,
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "More Options",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    ));
  }
}
