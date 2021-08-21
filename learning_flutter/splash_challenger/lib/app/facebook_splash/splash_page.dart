import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Challenger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 70,
                height: 70,
                child: Image.network(
                    'https://marcas-logos.net/wp-content/uploads/2020/01/Facebook-Emblema-Logo.jpg')),
                
                SizedBox(height: 10,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 5, height: 5, color: Colors.white,),
                    SizedBox(width: 10),
                    Container(width: 5, height: 5, color: Colors.white,),
                    SizedBox(width: 10),
                    Container(width: 5, height: 5, color: Colors.white,),
                    SizedBox(width: 10),
                    Container(width: 5, height: 5, color: Colors.blue[700]),
                    SizedBox(width: 10),
                    Container(width: 5, height: 5, color: Colors.blue[700],),
                  ],
                ),
                SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
