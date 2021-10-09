import 'package:flutter/material.dart';
import 'package:splash_challenger/app/pages/facebook_splash/facebook_splash.dart';
import 'package:splash_challenger/app/pages/instagram_profile/instagram_profile.dart';
import 'package:splash_challenger/app/pages/tinder_splash/tinder_splash.dart';
import 'package:splash_challenger/app/pages/whatsapp_splash/whatsapp_splash.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _screenList = <Widget>[
    FacebookSplash(),
    WhatsappSplash(),
    TinderSplash(),
    InstagramProfile()
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(child: _screenList.elementAt((_selectedIndex))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/fb_icon2.png',
                  height: 30, width: 30),
              label: 'Facebook'),
          BottomNavigationBarItem(
            icon:
                Image.asset('assets/image/wpp_icon.png', height: 30, width: 30),
            label: 'Whatsapp',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/tinder_icon.png',
                height: 30, width: 30),
            label: 'Tinder',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/ig_icons/ig_icon.png",
              height: 27,
              width: 27,
            ),
            label: 'Instagram',
          )
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: _selectedIndex == 0
            ? Colors.blue
            : _selectedIndex == 1
                ? Colors.green
                : _selectedIndex == 2
                    ? Colors.orange
                    : Colors.pink,
        onTap: _itemTapped,
      ),
    );
  }
}
