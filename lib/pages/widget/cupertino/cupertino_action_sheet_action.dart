import 'package:flutter/cupertino.dart';

class CupertinoActionSheetActionWidget extends StatelessWidget {
  const CupertinoActionSheetActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoButton(
        child: Text('Cupertino Sheet Action'),
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                    title: const Text('Kotlin Apps'),
                    message: const Text('Your message'),
                    actions: [
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Do something'),
                      )
                    ],
                  ));
        },
      ),
    );
  }
}
