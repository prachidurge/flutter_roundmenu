import 'package:flutter/material.dart';
import 'package:flutter_roundmenu/home_screen.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final ValueChanged onIndexChanged;
  PlaceholderWidget(this.color, {this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Screen 1!'),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              onIndexChanged(1);
              },
            child: const Text('Goto Screen 2', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              onIndexChanged(2);
            },
            child: const Text('Goto Screen 3', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }

  void _fun(int i) {
    //HomeScreen.onTabTapped(1);
    /*HomeScreen hs = new HomeScreen();
    final BottomNavigationBar navigationBar = hs.globalKey;
    navigationBar.onTap(2);*/
  }
}