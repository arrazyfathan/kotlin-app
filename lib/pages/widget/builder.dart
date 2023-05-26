import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(),
    );
  }

  myWidget() => Builder(builder: (context) {
        return Text(
          'Custom Widget',
          style: Theme.of(context).textTheme.displayLarge,
        );
      });
}
