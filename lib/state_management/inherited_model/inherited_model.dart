import 'package:flutter/material.dart';
import 'dart:math' show Random;

class InheritedModelExample extends StatefulWidget {
  const InheritedModelExample({Key? key}) : super(key: key);

  @override
  State<InheritedModelExample> createState() => _InheritedModelExampleState();
}

class _InheritedModelExampleState extends State<InheritedModelExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Model'),
      ),
    );
  }
}

enum AvailableColors { one, two }

class AvailableColorsWidget extends InheritedModel<AvailableColors> {
  final AvailableColors colorOne;
  final AvailableColors colorTwo;

  const AvailableColorsWidget({
    Key? key,
    required this.colorOne,
    required this.colorTwo,
    required Widget child,
  }) : super(key: key, child: child);

  static AvailableColorsWidget of(
    BuildContext context,
    AvailableColors aspect,
  ) {
    return InheritedModel.inheritFrom<AvailableColorsWidget>(context,
        aspect: aspect)!;
  }

  @override
  bool updateShouldNotify(covariant AvailableColorsWidget oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<AvailableColors> oldWidget,
      Set<AvailableColors> dependencies) {
    // TODO: implement updateShouldNotifyDependent
    throw UnimplementedError();
  }
}

final colors = [
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.purple,
  Colors.cyan,
  Colors.brown,
  Colors.amber,
  Colors.deepPurple,
];

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(Random().nextInt(length));
}

final color = colors.getRandomElement();
