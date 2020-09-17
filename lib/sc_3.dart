import 'package:flutter/material.dart';

class PlaceholderWidgetScreen3 extends StatelessWidget {
  final Color color;
  final ValueChanged<int> onIndexChanged;
  PlaceholderWidgetScreen3(this.color, {this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Screen 3!'),
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
              onIndexChanged(1);
            },
            child: const Text('Goto Screen 2', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }
}
