import 'package:flutter/material.dart';
import 'package:kotlin_app/pages/widget/about_dialog.dart';
import 'package:kotlin_app/pages/widget/about_list_tile.dart';
import 'package:kotlin_app/pages/widget/absorb_pointer.dart';
import 'package:kotlin_app/pages/widget/alert_dialog.dart';
import 'package:kotlin_app/pages/widget/align.dart';
import 'package:kotlin_app/pages/widget/aniamted_padding.dart';
import 'package:kotlin_app/pages/widget/aniamted_physical_model.dart';
import 'package:kotlin_app/pages/widget/animated_align.dart';
import 'package:kotlin_app/pages/widget/animated_builder.dart';
import 'package:kotlin_app/pages/widget/animated_container.dart';
import 'package:kotlin_app/pages/widget/animated_cross_fade.dart';
import 'package:kotlin_app/pages/widget/animated_default_text_style.dart';
import 'package:kotlin_app/pages/widget/animated_icon.dart';
import 'package:kotlin_app/pages/widget/animated_list.dart';
import 'package:kotlin_app/pages/widget/animated_opacity.dart';
import 'package:kotlin_app/pages/widget/animated_postitioned.dart';
import 'package:kotlin_app/pages/widget/animated_rotation.dart';
import 'package:kotlin_app/pages/widget/animated_size.dart';
import 'package:kotlin_app/pages/widget/animated_swithcher.dart';
import 'package:kotlin_app/pages/widget/app_bar.dart';
import 'package:kotlin_app/pages/widget/aspect_ratio.dart';
import 'package:kotlin_app/pages/widget/auto_complete.dart';
import 'package:kotlin_app/pages/widget/backdrop_filter.dart';
import 'package:kotlin_app/pages/widget/badge.dart';
import 'package:kotlin_app/pages/widget/banner.dart';
import 'package:kotlin_app/pages/widget/baseline.dart';
import 'package:kotlin_app/pages/widget/block_semantic.dart';
import 'package:kotlin_app/pages/widget/bottom_navigation_bar.dart';
import 'package:kotlin_app/pages/widget/bottom_sheet.dart';
import 'package:kotlin_app/pages/widget/builder.dart';
import 'package:kotlin_app/pages/widget/card.dart';
import 'package:kotlin_app/pages/widget/center.dart';
import 'package:kotlin_app/pages/widget/checkbox.dart';
import 'package:kotlin_app/pages/widget/checkbox_list_tile.dart';
import 'package:kotlin_app/pages/widget/chip.dart';
import 'package:kotlin_app/pages/widget/choice_chip.dart';
import 'package:kotlin_app/pages/widget/circle_avatar.dart';
import 'package:kotlin_app/pages/widget/circular_progress_indicator.dart';
import 'package:kotlin_app/pages/widget/clip_oval.dart';
import 'package:kotlin_app/pages/widget/clip_path.dart';
import 'package:kotlin_app/pages/widget/clip_r_rect.dart';
import 'package:kotlin_app/pages/widget/clip_rect.dart';
import 'package:kotlin_app/pages/widget/close_button.dart';
import 'package:kotlin_app/pages/widget/colored_box.dart';

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
                    }));
                  },
                  child: const Text('Animated List'),
                ),
                const AnimatedOpacityWidget(),
                const AnimatedPaddingWidget(),
                const AnimatedPhysicalModelWidget(),
                const AnimatedRotationWidget(),
                const AnimatedSizeWidget(),
                const AnimatedPositionedWidget(),
                const AnimatedSwitcherWidget(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const AppBarWidget();
                    }));
                  },
                  child: const Text('App Bar'),
                ),
                const AspectRatioWidget(),
                const AutoCompleteWidget(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BackdropFilterWidget();
                    }));
                  },
                  child: const Text('Backdrop Filter'),
                ),
                const BannerWidget(),
                const BadgeWidget(),
                const BaselineWidget(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BlockSemanticWidget();
                    }));
                  },
                  child: const Text('Block Semantic'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BottomNavigationBarWidget();
                    }));
                  },
                  child: const Text('Bottom Navigation Bar'),
                ),
                const BottomSheetWidget(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const BuilderWidget();
                        }));
                  },
                  child: const Text('Builder Widget'),
                ),
                const CardWidget(),
                const CenterWidget(),
                const CheckBoxWidget(),
                const CheckBoxListTileWidget(),
                const ChipWidget(),
                const ChoiceChipWidget(),
                const CircleAvatarWidget(),
                const CircularProgressIndicatorWidget(),
                const ClipOvalWidget(),
                const ClipPathWidget(),
                const ClipRectWidget(),
                const ClipRRectWidget(),
                const CloseButtonWidget(),
                const ColoredBoxWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
