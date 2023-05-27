import 'package:flutter/material.dart';

class ColoredBoxWidget extends StatelessWidget {
  const ColoredBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColoredBox(
        color: Colors.purple,
        child: SizedBox(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
