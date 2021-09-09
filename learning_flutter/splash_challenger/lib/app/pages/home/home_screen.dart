import 'package:flutter/material.dart';
import 'package:splash_challenger/app/pages/facebook_splash/facebook_splash.dart';
import 'package:splash_challenger/app/pages/tinder_splash/tinder_splash.dart';
import 'package:splash_challenger/app/pages/whatsapp_splash/whatsapp_splash.dart';

class HomeScreen extends StatefulWidget {
  ///HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _screenList = <Widget>[

    FacebookSplash(),
    TinderSplash(),
    WhatsappSplash()
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.orange[600],
          Colors.orange,
          Colors.red,
          Colors.pink,
          Colors.pink[600]
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Center(child: _screenList.elementAt((_selectedIndex))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/fb_icon2.png',
                  height: 30, width: 30),
              label: 'Facebook',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/tinder_icon.png',
                  height: 30, width: 30),
              label: 'Tinder',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/wpp_icon.png',
                  height: 30, width: 30),
              label: 'Whatsapp',
              backgroundColor: Colors.green),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: _selectedIndex == 0 ? Colors.blue : _selectedIndex == 1 ? Colors.orange : Colors.green,
        onTap: _itemTapped,
      ),
    );
  }
}
