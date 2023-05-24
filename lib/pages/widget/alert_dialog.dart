import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'))
                  ],
                  title: const Text('Kotlin App'),
                  contentPadding: const EdgeInsets.all(16.0),
                  content: const Text('This is alert dialog'),
                ));
      },
      child: const Text('Show alert dialog'),
    );
  }
}
