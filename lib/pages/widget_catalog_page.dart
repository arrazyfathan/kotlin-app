import 'package:flutter/material.dart';
import 'package:kotlin_app/pages/widget/about_dialog.dart';
import 'package:kotlin_app/pages/widget/about_list_tile.dart';
import 'package:kotlin_app/pages/widget/absorb_pointer.dart';
import 'package:kotlin_app/pages/widget/alert_dialog.dart';
import 'package:kotlin_app/pages/widget/align.dart';
import 'package:kotlin_app/pages/widget/animated_align.dart';
import 'package:kotlin_app/pages/widget/animated_builder.dart';
import 'package:kotlin_app/pages/widget/animated_container.dart';

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
              children: const [
                SizedBox(
                  height: 24,
                ),
                AboutDialogWidget(),
                AboutListTileWidget(),
                AbsorbPointerWidget(),
                AlertDialogWidget(),
                AlignWidget(),
                AnimatedAlignWidget(),
                AnimatedBuilderWidget(),
                AnimatedContainerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
