import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_roundmenu/sc_1.dart';
import 'package:flutter_roundmenu/sc_2.dart';
import 'package:flutter_roundmenu/sc_3.dart';

class HomeScreen extends StatefulWidget {
  static var tag = "HomeScreen";
  int currentTab = 0;
  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
 // HomeScreen({this.currentTab});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  //int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidgetScreen2(Colors.deepOrange),
    PlaceholderWidgetScreen3(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottem Navi '),
      ),
      body: _children[widget.currentTab],
      bottomNavigationBar: new BottomNavigationBar(
        key: widget.globalKey,
        onTap: onTabTapped,
        currentIndex: widget.currentTab,
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
      widget.currentTab = index;
    });
  }
}
