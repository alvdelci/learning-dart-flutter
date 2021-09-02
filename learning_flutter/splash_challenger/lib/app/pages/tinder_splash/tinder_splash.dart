import 'package:flutter/material.dart';

class TinderSplash extends StatefulWidget {
  @override
  _TinderSplashState createState() => _TinderSplashState();
}

class _TinderSplashState extends State<TinderSplash> {
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
                Container(
                  height: 40,
                  //"Terms, Privacy Policy e Coockies Policy é link suclinhado"
                  child: Center(
                    child: Text("By clicking Lon In, you agree with our Terms. Learn how we process your data in our Privacy Policy and Coockies Policy.",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0.0, 50, 0.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.grey[700],
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        shadowColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child:
                                    Image.asset("assets/image/google_icon.png"),
                              )),
                          SizedBox(
                            child: Text("LOGIN WITH GOOGLE"),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0.0, 50, 0.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.grey[700],
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        shadowColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 34,
                              width: 34,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Image.asset("assets/image/fb_icon2.png"),
                              )),
                          SizedBox(
                            child: Text("LOGIN WITH FACEBOOK"),
                          ),
                          SizedBox(
                            width: 35,
                          )
                        ],
                      )),
                ),
                SizedBox(height: 90,),
                Container(
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "More Options",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
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
