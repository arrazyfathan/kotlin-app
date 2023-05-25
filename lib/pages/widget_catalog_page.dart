import 'package:flutter/material.dart';
import 'package:kotlin_app/pages/widget/about_dialog.dart';
import 'package:kotlin_app/pages/widget/about_list_tile.dart';
import 'package:kotlin_app/pages/widget/absorb_pointer.dart';
import 'package:kotlin_app/pages/widget/alert_dialog.dart';
import 'package:kotlin_app/pages/widget/align.dart';
import 'package:kotlin_app/pages/widget/animated_align.dart';
import 'package:kotlin_app/pages/widget/animated_builder.dart';
import 'package:kotlin_app/pages/widget/animated_container.dart';
import 'package:kotlin_app/pages/widget/animated_cross_fade.dart';
import 'package:kotlin_app/pages/widget/animated_default_text_style.dart';
import 'package:kotlin_app/pages/widget/animated_icon.dart';
import 'package:kotlin_app/pages/widget/animated_list.dart';

class WidgetCatalog extends StatelessWidget {
  const WidgetCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                const AboutDialogWidget(),
                const AboutListTileWidget(),
                const AbsorbPointerWidget(),
                const AlertDialogWidget(),
                const AlignWidget(),
                const AnimatedAlignWidget(),
                const AnimatedBuilderWidget(),
                const AnimatedContainerWidget(),
                const AnimatedCrossFadeWidget(),
                const AnimatedDefaultTextStyleWidget(),
                const AnimatedIconWidget(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const AnimatedListWidget();
                      })
                    );
                  },
                  child: const Text('Animated List'),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
