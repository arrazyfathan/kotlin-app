import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Kotlin App',
                  applicationVersion: 'Version 1.0',
                  children: [Text('This is a text created by Koltin App')],
                ));
      },
      child: const Text('Show About Dialog'),
    );
  }
}
