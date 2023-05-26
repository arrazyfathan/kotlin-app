import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Badge(
      backgroundColor: Colors.red,
      alignment: AlignmentDirectional.topEnd,
      largeSize: 20,
      label: Text(
        '45',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Icon(
        Icons.notifications_active_rounded,
        size: 50,
      ),
    );
  }
}
