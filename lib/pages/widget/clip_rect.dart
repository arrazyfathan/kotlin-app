import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  const ClipRectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        clipper: MyClipper(),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
