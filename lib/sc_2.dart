import 'package:flutter/material.dart';

class PlaceholderWidgetScreen2 extends StatelessWidget {
  final Color color;
  final ValueChanged<int> onIndexChanged;
  PlaceholderWidgetScreen2(this.color, {this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Screen 2!'),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              onIndexChanged(0);
            },
            child: const Text('Goto Screen 1', style: TextStyle(fontSize: 20)),
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
}