import 'package:flutter/cupertino.dart';

class CupertinoAppWidget extends StatelessWidget {
  const CupertinoAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
        primaryColor: CupertinoColors.systemOrange
      ),
      home: Text('This is cupertino system design'),
    );
  }
}
