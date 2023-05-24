import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: 120.0,
        width: double.infinity,
        color: Colors.blueGrey,
        child: AnimatedAlign(
          duration: const Duration(seconds: 3),
          alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
          curve: Curves.bounceIn,
          // alignment: Alignment.topRight,
          child: const FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
