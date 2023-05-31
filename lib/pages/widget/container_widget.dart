import 'package:flutter/material.dart';


class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.redAccent,
      alignment: Alignment.center,
      child: const Text('This is container'),
      constraints: const BoxConstraints.expand(height: 200),
      transform: Matrix4.rotationZ(0.2),
    );
  }
}
