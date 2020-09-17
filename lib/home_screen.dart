import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_roundmenu/sc_1.dart';
import 'package:flutter_roundmenu/sc_2.dart';
import 'package:flutter_roundmenu/sc_3.dart';

class HomeScreen extends StatefulWidget {
  static var tag = "HomeScreen";
  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
 // HomeScreen({this.currentTab});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  //int _currentIndex = 0;
  int currentTab = 0;
  Widget _buildWidget(int currentTab) {
    switch(currentTab) {
      case 0:
        return PlaceholderWidget(Colors.white, onIndexChanged: (value) => onTabTapped(value));
        break;
      case 1:
        return PlaceholderWidgetScreen2(Colors.deepOrange, onIndexChanged: (value) => onTabTapped(value));
        break;
      default:
        return PlaceholderWidgetScreen3(Colors.green, onIndexChanged: (value) => onTabTapped(value));

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottem Navi '),
      ),
      body: _buildWidget(currentTab),
      bottomNavigationBar: new BottomNavigationBar(
        key: widget.globalKey,
        onTap: onTabTapped,
        currentIndex: currentTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }
}
