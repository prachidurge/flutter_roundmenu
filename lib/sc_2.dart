import 'package:flutter/material.dart';

class PlaceholderWidgetScreen2 extends StatelessWidget {
  final Color color;

  PlaceholderWidgetScreen2(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Screen 2!'),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Goto Screen 1', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Goto Screen 3', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }
}