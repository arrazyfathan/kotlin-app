import 'package:flutter/material.dart';
import 'package:kotlin_app/generated/assets.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold
            ),
            child: const Text("Kotlin"),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _first = !_first;
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.black : Colors.purple;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white
          ),
          child: const Text('Switch TextStyle'),
        )
      ],
    );
  }
}
