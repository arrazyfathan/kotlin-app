import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: double.infinity,
      color: Colors.blueGrey,
      child: const Align(
        alignment: Alignment.topLeft,
        // alignment: Alignment.topRight,
        child: FlutterLogo(size: 60,),
      ),
    );
  }
}
