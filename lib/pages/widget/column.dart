import 'package:flutter/material.dart';


class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // horizontally
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Vertically
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Row 1'),
        Text('Row 2'),
        Text('Row 3'),
        Text('Row 4'),
        Text('Row 5'),
        Text('Row 6'),
        Text('Koltin Apps'),
      ],
    );
  }
}
