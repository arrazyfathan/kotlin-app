import 'package:flutter/material.dart';


class ConstraintBoxWidget extends StatelessWidget {
  const ConstraintBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 400,
        maxWidth: 900,
      ),
      child: Container(
        height: 900,
        width: double.infinity,
        color: Colors.orangeAccent,
      ),
    );
  }
}
