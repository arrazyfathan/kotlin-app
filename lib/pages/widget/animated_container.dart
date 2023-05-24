import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        width: selected ? 200.0 : 100.0,
        height: selected ? 100.0 : 200.0,
        color: selected ? Colors.blueGrey : Colors.blue,
        alignment: selected ? Alignment.center : Alignment.topCenter,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(seconds: 2),
        child: const FlutterLogo(size: 50,),
      ),
    );
  }
}
