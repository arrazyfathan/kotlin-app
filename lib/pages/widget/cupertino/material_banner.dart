import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
            padding: const EdgeInsets.all(20),
            content: const Text('Subscribe'),
            leading: const Icon(Icons.notifications_active_outlined),
            elevation: 5,
            backgroundColor: Colors.white12,
            actions: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: const Text('Dismiss'),
              ),
            ]));
      },
      child: const Text('Show material banner'),
    );
  }
}
