import 'package:flutter/material.dart';

class PlaceholderWidgetScreen3 extends StatelessWidget {
  final Color color;

  PlaceholderWidgetScreen3(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Screen 3!'),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Goto Screen 1', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Goto Screen 2', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }
}
