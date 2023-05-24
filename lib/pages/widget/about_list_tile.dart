import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutListTile(
      icon: Icon(Icons.info,),
      applicationIcon: FlutterLogo(),
      applicationLegalese: 'Legales',
      applicationName: 'Kotlin App',
      applicationVersion: 'Version 1.0',
      aboutBoxChildren: [Text('This is a About list tile')],
    );
  }
}
