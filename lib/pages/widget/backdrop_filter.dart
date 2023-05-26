import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:kotlin_app/generated/assets.dart';

class BackdropFilterWidget extends StatelessWidget {
  const BackdropFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          Assets.imagesOne,
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                child: const Text(
                  'Blur',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
