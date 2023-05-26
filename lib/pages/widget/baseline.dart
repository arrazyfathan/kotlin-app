import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.orange,
      child: const Baseline(
        baseline: 50,
        baselineType: TextBaseline.alphabetic,
        child: FlutterLogo(size: 50),
      ),
    );
  }
}
